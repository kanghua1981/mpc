cmd_kernel/cpu.o := mips-linux-gcc -Wp,-MD,kernel/.cpu.o.d  -nostdinc -isystem /home/kanghua/src/gw6030/rtl819x/toolchain/rsdk-4.6.4-4181-EB-3.10-u0.9.33-m32-150324/bin/../lib/gcc/mips-linux-uclibc/4.6.4/include -I/home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include -Iarch/rlx/include/generated  -Iinclude -I/home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi -Iarch/rlx/include/generated/uapi -I/home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi -Iinclude/generated/uapi -include /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/linux/kconfig.h -D__KERNEL__ -DVMLINUX_LOAD_ADDRESS=0x80000000 -DDATAOFFSET=0 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -std=gnu89 -O2 -mno-check-zero-division -mabi=32 -G 0 -mno-abicalls -fno-pic -pipe -ffreestanding -EB -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__ -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__ -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__ -I/home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/ -I/home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/soc-rtl8196e/ -Iinclude/asm-rlx -I/home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/mach-generic -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO   -ffunction-sections -fdata-sections  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(cpu)"  -D"KBUILD_MODNAME=KBUILD_STR(cpu)" -c -o kernel/cpu.o kernel/cpu.c

source_kernel/cpu.o := kernel/cpu.c

deps_kernel/cpu.o := \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/pm/sleep/smp.h) \
    $(wildcard include/config/init/all/possible.h) \
    $(wildcard include/config/nr/cpus.h) \
  include/linux/proc_fs.h \
    $(wildcard include/config/proc/fs.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/types.h \
    $(wildcard include/config/64bit/phys/addr.h) \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/types.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/posix_types.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/sgidefs.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/asm-generic/posix_types.h \
  include/linux/fs.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
    $(wildcard include/config/rtl/sendfile/patch.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/linkage.h \
  include/linux/wait.h \
    $(wildcard include/config/lockdep.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/const.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
  include/linux/typecheck.h \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /home/kanghua/src/gw6030/rtl819x/toolchain/rsdk-4.6.4-4181-EB-3.10-u0.9.33-m32-150324/bin/../lib/gcc/mips-linux-uclibc/4.6.4/include/stdarg.h \
  include/linux/bitops.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/bitops.h \
    $(wildcard include/config/cpu/mipsr2.h) \
    $(wildcard include/config/cpu/has/cls.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/barrier.h \
    $(wildcard include/config/cpu/has/sync.h) \
    $(wildcard include/config/cpu/cavium/octeon.h) \
    $(wildcard include/config/sgi/ip28.h) \
    $(wildcard include/config/cpu/has/wb.h) \
    $(wildcard include/config/weak/ordering.h) \
    $(wildcard include/config/weak/reordering/beyond/llsc.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/addrspace.h \
    $(wildcard include/config/cpu/r8000.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/mach-generic/spaces.h \
    $(wildcard include/config/32bit.h) \
    $(wildcard include/config/kvm/guest.h) \
    $(wildcard include/config/dma/noncoherent.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/byteorder.h \
  include/linux/byteorder/big_endian.h \
  include/uapi/linux/byteorder/big_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/cpu-features.h \
    $(wildcard include/config/cpu/has/fpu.h) \
    $(wildcard include/config/cpu/has/wmpu.h) \
    $(wildcard include/config/cpu/has/llsc.h) \
    $(wildcard include/config/cpu/has/tls.h) \
    $(wildcard include/config/cpu/mipsr2/irq/vi.h) \
    $(wildcard include/config/cpu/mipsr2/irq/ei.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/cpu.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/cpu-info.h \
    $(wildcard include/config/mips/mt/smp.h) \
    $(wildcard include/config/mips/mt/smtc.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/cache.h \
    $(wildcard include/config/mips/l1/cache/shift.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/mach-generic/kmalloc.h \
    $(wildcard include/config/dma/coherent.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/soc-rtl8196e/bspcpu.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/war.h \
    $(wildcard include/config/cpu/r4000/workarounds.h) \
    $(wildcard include/config/cpu/r4400/workarounds.h) \
    $(wildcard include/config/cpu/daddi/workarounds.h) \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/ffz.h \
  include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  include/asm-generic/bitops/sched.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/arch_hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/le.h \
  include/asm-generic/bitops/ext2-atomic.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/printk/func.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/dynamic_debug.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/string.h \
    $(wildcard include/config/cpu/rlx4181.h) \
    $(wildcard include/config/cpu/rlx5181.h) \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/errno.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/errno.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/asm-generic/errno-base.h \
  include/uapi/linux/kernel.h \
    $(wildcard include/config/rlx.h) \
  include/generated/uapi/linux/version.h \
  include/uapi/linux/sysinfo.h \
    $(wildcard include/config/rtl/819x.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/div64.h \
  include/asm-generic/div64.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/thread_info.h \
    $(wildcard include/config/page/size/4kb.h) \
    $(wildcard include/config/page/size/8kb.h) \
    $(wildcard include/config/page/size/16kb.h) \
    $(wildcard include/config/page/size/32kb.h) \
    $(wildcard include/config/page/size/64kb.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/processor.h \
    $(wildcard include/config/cpu/has/radiax.h) \
    $(wildcard include/config/cpu/has/prefetch.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/threads.h \
    $(wildcard include/config/base/small.h) \
  include/linux/bitmap.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/cachectl.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/rlxregs.h \
    $(wildcard include/config/cpu/rlx5281.h) \
    $(wildcard include/config/cpu/rlx4281.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/hazards.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/prefetch.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/irqflags.h \
    $(wildcard include/config/irq/cpu.h) \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  include/linux/spinlock_types_up.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
  include/linux/spinlock_up.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_up.h \
  include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/atomic.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/cmpxchg.h \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/atomic-long.h \
  include/asm-generic/atomic64.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/current.h \
  include/asm-generic/current.h \
  include/uapi/linux/wait.h \
  include/linux/kdev_t.h \
  include/uapi/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/linux/seqlock.h \
  include/linux/completion.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/rcutiny.h \
  include/linux/rculist_bl.h \
  include/linux/list_bl.h \
  include/linux/bit_spinlock.h \
  include/linux/path.h \
  include/linux/stat.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/math64.h \
  include/uapi/linux/time.h \
  include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  include/linux/radix-tree.h \
  include/linux/rbtree.h \
  include/linux/pid.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  include/linux/capability.h \
  include/uapi/linux/capability.h \
  include/linux/semaphore.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/fiemap.h \
  include/linux/shrinker.h \
  include/linux/migrate_mode.h \
  include/linux/percpu-rwsem.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  include/linux/pfn.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  include/uapi/linux/fs.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/limits.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/ioctl.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  include/linux/percpu_counter.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/projid.h \
  include/uapi/linux/quota.h \
  include/linux/nfs_fs_i.h \
  include/linux/fcntl.h \
  include/uapi/linux/fcntl.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/fcntl.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/asm-generic/fcntl.h \
  include/linux/err.h \
  include/linux/notifier.h \
  include/linux/srcu.h \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/param.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/timex.h \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/mm/owner.h) \
  include/uapi/linux/sched.h \
  include/linux/nodemask.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/movable/node.h) \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/compaction.h) \
  include/linux/auxvec.h \
  include/uapi/linux/auxvec.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/auxvec.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  include/linux/uprobes.h \
    $(wildcard include/config/arch/supports/uprobes.h) \
  include/linux/page-flags-layout.h \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  include/generated/bounds.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/page.h \
    $(wildcard include/config/mips/huge/tlb/support.h) \
    $(wildcard include/config/cpu/mips32.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/io.h \
    $(wildcard include/config/pci.h) \
  include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport.h) \
    $(wildcard include/config/generic/iomap.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/pgtable-bits.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/mach-generic/ioremap.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/mach-generic/mangle-port.h \
    $(wildcard include/config/swap/io/space.h) \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
  include/asm-generic/getorder.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/mmu.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/ptrace.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/isadep.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/ptrace.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/cputime.h \
  include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/asm-generic/cputime_jiffies.h \
  include/linux/sem.h \
  include/uapi/linux/sem.h \
  include/linux/ipc.h \
  include/uapi/linux/ipc.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/ipcbuf.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/asm-generic/ipcbuf.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/sembuf.h \
  include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  include/uapi/linux/signal.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/signal.h \
    $(wildcard include/config/trad/signals.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/signal.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/asm-generic/signal-defs.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/sigcontext.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/sigcontext.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/siginfo.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/uapi/asm-generic/siginfo.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/topology.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/mach-generic/topology.h \
  include/asm-generic/topology.h \
  include/linux/proportions.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  include/uapi/linux/seccomp.h \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/resource.h \
  include/uapi/linux/resource.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/resource.h \
  include/asm-generic/resource.h \
  include/uapi/asm-generic/resource.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/timerqueue.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  include/linux/key.h \
    $(wildcard include/config/sysctl.h) \
  include/linux/sysctl.h \
  include/uapi/linux/sysctl.h \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  include/linux/gfp.h \
    $(wildcard include/config/pm/sleep.h) \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/unistd.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/unistd.h \
    $(wildcard include/config/mips32/o32.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/uapi/asm/unistd.h \
  include/linux/cpu.h \
    $(wildcard include/config/arch/has/cpu/autoprobe.h) \
    $(wildcard include/config/arch/cpu/probe/release.h) \
  include/linux/node.h \
    $(wildcard include/config/memory/hotplug/sparse.h) \
    $(wildcard include/config/hugetlbfs.h) \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/ioport.h \
  include/linux/kobject.h \
  include/linux/sysfs.h \
  include/linux/kobject_ns.h \
  include/linux/kref.h \
  include/linux/klist.h \
  include/linux/pinctrl/devinfo.h \
  include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  include/linux/ratelimit.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/device.h \
  include/linux/pm_wakeup.h \
  include/linux/oom.h \
  include/uapi/linux/oom.h \
  include/linux/kthread.h \
  include/linux/stop_machine.h \
    $(wildcard include/config/stop/machine.h) \
  include/linux/suspend.h \
    $(wildcard include/config/vt.h) \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/pm/sleep/debug.h) \
    $(wildcard include/config/pm/autosleep.h) \
    $(wildcard include/config/arch/save/page/keys.h) \
  include/linux/swap.h \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/frontswap.h) \
    $(wildcard include/config/memcg/swap.h) \
    $(wildcard include/config/swap.h) \
  include/linux/memcontrol.h \
    $(wildcard include/config/inet.h) \
    $(wildcard include/config/memcg/kmem.h) \
  include/linux/cgroup.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/cgroupstats.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/include/uapi/linux/taskstats.h \
  include/linux/prio_heap.h \
  include/linux/idr.h \
  include/linux/xattr.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/slub/debug.h) \
  include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  include/uapi/linux/xattr.h \
  include/linux/vm_event_item.h \
  include/linux/hardirq.h \
    $(wildcard include/config/generic/hardirqs.h) \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  include/linux/vtime.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/hardirq.h \
  include/asm-generic/hardirq.h \
  include/linux/irq_cpustat.h \
  include/linux/irq.h \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  include/uapi/linux/irqnr.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/irq.h \
  include/linux/irqdomain.h \
    $(wildcard include/config/irq/domain.h) \
    $(wildcard include/config/of/irq.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/mach-generic/irq.h \
    $(wildcard include/config/i8259.h) \
    $(wildcard include/config/irq/cpu/rm7k.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/irq_regs.h \
  include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/sparse/irq.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/hw_irq.h \
  include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  include/linux/mm.h \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/arch/uses/numa/prot/none.h) \
    $(wildcard include/config/debug/pagealloc.h) \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/range.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/pgtable.h \
    $(wildcard include/config/cpu/supports/uncached/accelerated.h) \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/pgtable-32.h \
  /home/kanghua/src/gw6030/rtl819x/linux-3.10/arch/rlx/include/asm/fixmap.h \
  include/asm-generic/pgtable-nopmd.h \
  include/asm-generic/pgtable-nopud.h \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
  include/linux/huge_mm.h \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  include/linux/freezer.h \
    $(wildcard include/config/cgroup/freezer.h) \
  kernel/smpboot.h \
    $(wildcard include/config/generic/smp/idle/thread.h) \

kernel/cpu.o: $(deps_kernel/cpu.o)

$(deps_kernel/cpu.o):
