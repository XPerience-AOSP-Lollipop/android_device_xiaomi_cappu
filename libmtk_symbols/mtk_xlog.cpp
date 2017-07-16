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

#include <cutils/log.h>

extern "C" {

struct xlog_record {
	const char *tag_str;
	const char *fmt_str;
	int prio;
};

static void init(void) __attribute__ ((constructor));

void init(void){}

int __xlog_buf_printf(int bufid, const struct xlog_record *rec, ...)
{
  va_list args;
  va_start(args, rec);
  LOG_PRI_VA(rec->prio, rec->tag_str, rec->fmt_str, args);
  va_end(args);

  return 0;
}

void dl_unregister_notify_function(void){}

void dl_register_notify_function(int (*load_notify_function) (const char *name, uintptr_t address, uintptr_t size), int(*unload_notify_function) (const char *name, uintptr_t address)){}

}
