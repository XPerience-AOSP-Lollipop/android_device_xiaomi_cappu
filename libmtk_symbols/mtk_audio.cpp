/*
 * Copyright (C) 2017 The XPerience Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdint.h>

extern "C" {
    bool _ZN7android11AudioSystem24getVoiceUnlockDLInstanceEv(){
        return 0;
    }
    
    int _ZN7android11AudioSystem23GetVoiceUnlockDLLatencyEv(){
        return 0;
    }
 
    int _ZN7android11AudioSystem17SetVoiceUnlockSRCEjj(uint32_t outSR, uint32_t outChannel){
        return 0;
    }

    bool _ZN7android11AudioSystem18startVoiceUnlockDLEv(){
        return 0;
    }
 
    int _ZN7android11AudioSystem15ReadRefFromRingEPvjS1_(void*buf, uint32_t datasz, void* DLtime){
        return 0;
    }
    
    int _ZN7android11AudioSystem20GetVoiceUnlockULTimeEPv(void* DLtime) {
        return 0;
    }

    void _ZN7android11AudioSystem25freeVoiceUnlockDLInstanceEv(){}

    bool _ZN7android11AudioSystem17stopVoiceUnlockDLEv(){
        return 0;
    }
    
    int _ZN7android11AudioSystem12SetAudioDataEijPv(int par1,size_t byte_len,void *ptr) {
        return 0;
    }
    
    int _ZN7android11AudioSystem15SetAudioCommandEii(int var1,int var2) {
        return 0;
    }
    
    int _ZN7android11AudioSystem15GetAudioCommandEiPi(int var1) {
        return 0;
    }
}

