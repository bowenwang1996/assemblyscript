(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\0c\00\00\00\01\d87\dch\00i\00R\d8b\df")
 (data (i32.const 32) "\10\00\00\00$\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00-\00u\00t\00f\008\00.\00t\00s")
 (data (i32.const 80) "\10")
 (data (i32.const 88) "\10\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 128) "\10\00\00\00(\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 176) "\10\00\00\00\04\00\00\00\01\d87\dc")
 (data (i32.const 192) "\10\00\00\00\04\00\00\00h\00i")
 (data (i32.const 208) "\10\00\00\00\04\00\00\00R\d8b\df")
 (data (i32.const 224) "\10\00\00\00\02")
 (data (i32.const 240) "\10\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 280) "\11")
 (data (i32.const 416) "!\00\00\00\0e")
 (global $std/string-utf8/str (mut i32) (i32.const 16))
 (global $std/string-utf8/len (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/string-utf8/ptr (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/allocator/arena/__mem_free))
 (export "$.release" (func $~lib/allocator/arena/__mem_free))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (start $start)
 (func $~lib/string/String#get:lengthUTF8 (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  local.set $1
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  loop $continue|0
   local.get $2
   local.get $4
   i32.lt_u
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $2
     i32.const 1
     i32.add
    else     
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      local.get $2
      i32.const 1
      i32.add
     else      
      block (result i32)
       local.get $3
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.tee $3
       if
        local.get $2
        i32.const 1
        i32.add
        local.get $4
        i32.lt_u
        local.set $3
       end
       local.get $3
      end
      if (result i32)
       local.get $2
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.load16_u
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
      else       
       local.get $3
      end
      if (result i32)
       local.get $1
       i32.const 4
       i32.add
       local.set $1
       local.get $2
       i32.const 2
       i32.add
      else       
       local.get $1
       i32.const 3
       i32.add
       local.set $1
       local.get $2
       i32.const 1
       i32.add
      end
     end
    end
    local.set $2
    br $continue|0
   end
  end
  local.get $1
 )
 (func $~lib/allocator/arena/__mem_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/string/String#toUTF8 (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/string/String#get:lengthUTF8
  call $~lib/allocator/arena/__mem_allocate
  local.set $5
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $7
  loop $continue|0
   local.get $4
   local.get $7
   i32.lt_u
   if
    local.get $4
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.load16_u
    local.tee $1
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $2
     local.get $5
     i32.add
     local.get $1
     i32.store8
     local.get $2
     i32.const 1
     i32.add
    else     
     local.get $1
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      local.get $5
      i32.add
      local.tee $3
      local.get $1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $3
      local.get $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $2
      i32.const 2
      i32.add
     else      
      local.get $2
      local.get $5
      i32.add
      local.set $3
      local.get $1
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.tee $6
      if (result i32)
       local.get $4
       i32.const 1
       i32.add
       local.get $7
       i32.lt_u
      else       
       local.get $6
      end
      if
       local.get $4
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.load16_u
       local.tee $6
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $3
        local.get $1
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $6
        i32.const 1023
        i32.and
        i32.add
        local.tee $1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $3
        local.get $1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $3
        local.get $1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $3
        local.get $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $4
        i32.const 2
        i32.add
        local.set $4
        br $continue|0
       end
      end
      local.get $3
      local.get $1
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $3
      local.get $1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $3
      local.get $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 3
      i32.add
     end
    end
    local.set $2
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $continue|0
   end
  end
  local.get $2
  local.get $5
  i32.add
  i32.const 0
  i32.store8
  local.get $5
 )
 (func $~lib/util/runtime/allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__mem_allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.add
 )
 (func $~lib/memory/memory.copy (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $2
       i32.const 8
       i32.sub
       local.set $2
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $2
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $continue|2
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $2
       i32.const 8
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $2
     if
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      local.get $0
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/allocator/arena/__mem_free (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/util/runtime/register (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 424
  i32.le_u
  if
   i32.const 0
   i32.const 136
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/string/String.fromUTF8 (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.lt_u
  if
   i32.const 88
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  call $~lib/allocator/arena/__mem_allocate
  local.set $6
  loop $continue|0
   local.get $2
   local.get $1
   i32.lt_u
   if
    local.get $2
    local.tee $3
    i32.const 1
    i32.add
    local.set $2
    local.get $0
    local.get $3
    i32.add
    i32.load8_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if
     local.get $5
     local.get $6
     i32.add
     local.get $4
     i32.store16
    else     
     local.get $4
     i32.const 191
     i32.gt_u
     local.tee $3
     if
      local.get $4
      i32.const 224
      i32.lt_u
      local.set $3
     end
     local.get $3
     if
      local.get $2
      i32.const 1
      i32.add
      local.get $1
      i32.gt_u
      if
       i32.const 0
       i32.const 96
       i32.const 461
       i32.const 8
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.tee $3
      i32.const 1
      i32.add
      local.set $2
      local.get $5
      local.get $6
      i32.add
      local.get $0
      local.get $3
      i32.add
      i32.load8_u
      i32.const 63
      i32.and
      local.get $4
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      i32.or
      i32.store16
     else      
      local.get $4
      i32.const 239
      i32.gt_u
      local.tee $3
      if
       local.get $4
       i32.const 365
       i32.lt_u
       local.set $3
      end
      local.get $3
      if
       local.get $2
       i32.const 3
       i32.add
       local.get $1
       i32.gt_u
       if
        i32.const 0
        i32.const 96
        i32.const 465
        i32.const 8
        call $~lib/builtins/abort
        unreachable
       end
       local.get $4
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $0
       local.get $2
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $2
       i32.const 1
       i32.add
       local.tee $2
       local.get $0
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.set $3
       local.get $2
       i32.const 1
       i32.add
       local.tee $4
       i32.const 1
       i32.add
       local.set $2
       local.get $5
       local.get $6
       i32.add
       local.get $0
       local.get $4
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       local.get $3
       i32.or
       i32.const 65536
       i32.sub
       local.tee $3
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.add
       i32.store16
       local.get $6
       local.get $5
       i32.const 2
       i32.add
       local.tee $5
       i32.add
       local.get $3
       i32.const 1023
       i32.and
       i32.const 56320
       i32.add
       i32.store16
      else       
       local.get $2
       i32.const 2
       i32.add
       local.get $1
       i32.gt_u
       if
        i32.const 0
        i32.const 96
        i32.const 477
        i32.const 8
        call $~lib/builtins/abort
        unreachable
       end
       local.get $4
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $0
       local.get $2
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.set $3
       local.get $2
       i32.const 1
       i32.add
       local.tee $4
       i32.const 1
       i32.add
       local.set $2
       local.get $5
       local.get $6
       i32.add
       local.get $0
       local.get $4
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       local.get $3
       i32.or
       i32.store16
      end
     end
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    br $continue|0
   end
  end
  local.get $1
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 96
   i32.const 486
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/util/runtime/allocate
  local.tee $0
  local.get $6
  local.get $5
  call $~lib/memory/memory.copy
  local.get $0
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/string/compareImpl (; 9 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  loop $continue|0
   local.get $2
   if (result i32)
    local.get $0
    i32.load16_u
    local.get $1
    i32.load16_u
    i32.sub
    local.tee $3
    i32.eqz
   else    
    local.get $2
   end
   if
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $continue|0
   end
  end
  local.get $3
 )
 (func $~lib/string/String.__eq (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.eqz
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  local.get $1
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $start:std/string-utf8 (; 11 ;) (type $FUNCSIG$v)
  global.get $std/string-utf8/str
  call $~lib/string/String#get:lengthUTF8
  global.set $std/string-utf8/len
  global.get $std/string-utf8/len
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 424
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  global.get $std/string-utf8/str
  call $~lib/string/String#toUTF8
  global.set $std/string-utf8/ptr
  global.get $std/string-utf8/ptr
  i32.load8_u
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=1
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=2
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=3
  i32.const 183
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=4
  i32.const 104
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=5
  i32.const 105
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=6
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=7
  i32.const 164
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=8
  i32.const 173
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=9
  i32.const 162
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=10
  if
   i32.const 0
   i32.const 40
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 0
  call $~lib/string/String.fromUTF8
  i32.const 88
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  global.get $std/string-utf8/len
  i32.const 1
  i32.sub
  call $~lib/string/String.fromUTF8
  global.get $std/string-utf8/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 4
  call $~lib/string/String.fromUTF8
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 4
  i32.add
  i32.const 2
  call $~lib/string/String.fromUTF8
  i32.const 200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 6
  i32.add
  i32.const 4
  call $~lib/string/String.fromUTF8
  i32.const 216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 10
  i32.add
  i32.const 1
  call $~lib/string/String.fromUTF8
  i32.const 232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/runtime/runtime.instanceof (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 280
   i32.load
   i32.le_u
  else   
   local.get $0
  end
  if
   loop $continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 280
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 280
   i32.load
   i32.gt_u
   local.set $1
  end
  local.get $1
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 280
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArray (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   i32.const 280
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 280
   i32.add
   i32.load
  end
  local.tee $3
  i32.const 8
  i32.div_u
  i32.const 31
  i32.and
  local.set $4
  local.get $1
  if (result i32)
   local.get $1
   i32.const 8
   i32.sub
   i32.load offset=4
  else   
   i32.const 0
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
   i32.const 0
  end
  local.set $2
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.tee $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $4
  i32.shr_u
  i32.store offset=12
  local.get $3
  i32.const 512
  i32.and
  if
   local.get $1
   local.get $2
   i32.add
   local.set $2
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     local.get $1
     i32.load
     if
      i32.const 0
      i32.const 248
      i32.const 97
      i32.const 15
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.collect (; 18 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.const 248
  i32.const 139
  i32.const 9
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 19 ;) (type $FUNCSIG$v)
  call $start:std/string-utf8
 )
 (func $null (; 20 ;) (type $FUNCSIG$v)
  nop
 )
)
