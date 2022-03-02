#!/usr/bin/python3
#coding:utf-8
from os import system
import json
from datetime import datetime
from multiprocessing import Process

class entropyStalker(object):
    def __init__(self,walk_speed=1):
        self.entropy = None
        self.walk_speed = walk_speed
        self.destination_path = "/var/entropyStalker/data/stalks/"
        self.filename_head="entopyStalk-"
        self.filename_ext=".json"
        self.max_buff_stack = 30
        self.stackBuff=[]
    def read_entropy(self):
        with open("/proc/sys/kernel/random/entropy_avail","r") as f:
            self.entropy = f.read()
            f.close()
        return self
    def show_entropy(self):
        print("\rentropy: {e}\r".format( e = self.entropy ),end='\r')
        return self
    def put_in_stack(self):
        self.stackBuff.append(self.entropy)
        return self
    def control_beafsteak(self):
        if len(self.stackBuff) >= self.max_buff_stack:
            self.putintofile()
        return self
    def putintofile(self):
        t = datetime.now()
        formatted_time = t.strftime("%d-%m-%y_%H-%M")
        with open("{h}{d}{e}".format(
            h = self.filename_head,
            d = formatted_time,
            e = self.filename_ext) ,'wb') as f:
            #
            f.write(json.dumps(self.stackBuff, indent = 4))
            f.close()
    def stalking(self):
        while True:
            self.read_entropy().put_in_stack().control_beafsteak().show_entropy()
            system("sleep {s}s ".format(s = self.walk_speed))

es=entropyStalker()
es.stalking()

