.class public abstract Lcom/tapjoy/internal/gd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gd$b;,
        Lcom/tapjoy/internal/gd$a;,
        Lcom/tapjoy/internal/gd$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field volatile b:I

.field c:Lcom/tapjoy/internal/gd$b;

.field d:J

.field e:Lcom/tapjoy/internal/gd$a;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tapjoy/TJConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/tapjoy/internal/gd$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd;->f:Ljava/util/concurrent/locks/Condition;

    .line 50
    sget v0, Lcom/tapjoy/internal/gd$c;->a:I

    iput v0, p0, Lcom/tapjoy/internal/gd;->b:I

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gd;->g:Ljava/util/LinkedList;

    .line 55
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/tapjoy/internal/gd;->d:J

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd;Z)V
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gd;->a(Z)V

    return-void
.end method


# virtual methods
.method final a()Lcom/tapjoy/internal/gd$a;
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->h:Lcom/tapjoy/internal/gd$a;

    if-eqz v0, :cond_e

    .line 175
    iput-object v0, p0, Lcom/tapjoy/internal/gd;->e:Lcom/tapjoy/internal/gd$a;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/gd;->h:Lcom/tapjoy/internal/gd$a;

    .line 178
    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->e:Lcom/tapjoy/internal/gd$a;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    .line 180
    iget-object v1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    return-object v0

    .line 180
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    throw v0
.end method

.method final a(I)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    nop

    .line 122
    :try_start_6
    iput p1, p0, Lcom/tapjoy/internal/gd;->b:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_e

    .line 125
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    return-void

    .line 125
    :catchall_e
    move-exception p1

    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    throw p1
.end method

.method final a(Z)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 188
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_40

    if-nez v0, :cond_13

    .line 194
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 189
    return-void

    .line 191
    :cond_13
    :try_start_13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gd;->g:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    iget-object v1, p0, Lcom/tapjoy/internal/gd;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_40

    .line 194
    iget-object v1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    nop

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJConnectListener;

    .line 198
    if-eqz p1, :cond_3b

    .line 199
    invoke-interface {v1}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    goto :goto_29

    .line 201
    :cond_3b
    invoke-interface {v1}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    .line 203
    goto :goto_29

    .line 205
    :cond_3f
    return-void

    .line 194
    :catchall_40
    move-exception p1

    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    goto :goto_48

    :goto_47
    throw p1

    :goto_48
    goto :goto_47
.end method

.method final a(J)Z
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 229
    const/4 v0, 0x0

    :try_start_6
    sget v1, Lcom/tapjoy/internal/gd$c;->d:I

    sget v2, Lcom/tapjoy/internal/gd$c;->c:I

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/gd;->a(I)V

    .line 230
    iget-object v1, p0, Lcom/tapjoy/internal/gd;->f:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 231
    const-wide/16 p1, 0x3e8

    iput-wide p1, p0, Lcom/tapjoy/internal/gd;->d:J
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_1b} :catch_36
    .catchall {:try_start_6 .. :try_end_1b} :catchall_28

    .line 238
    :cond_1b
    sget p1, Lcom/tapjoy/internal/gd$c;->c:I

    sget p2, Lcom/tapjoy/internal/gd$c;->d:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gd;->a(I)V

    .line 239
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    return v0

    .line 238
    :catchall_28
    move-exception p1

    sget p2, Lcom/tapjoy/internal/gd$c;->c:I

    sget v0, Lcom/tapjoy/internal/gd$c;->d:I

    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/gd;->a(I)V

    .line 239
    iget-object p2, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 240
    throw p1

    .line 234
    :catch_36
    move-exception p1

    .line 238
    sget p1, Lcom/tapjoy/internal/gd$c;->c:I

    sget p2, Lcom/tapjoy/internal/gd$c;->d:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gd;->a(I)V

    .line 239
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 236
    return v0
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation
.end method

.method final b()V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    const-wide/16 v0, 0x3e8

    :try_start_7
    iput-wide v0, p0, Lcom/tapjoy/internal/gd;->d:J

    .line 219
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 221
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    return-void

    .line 221
    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    throw v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    if-eqz p4, :cond_12

    .line 69
    :try_start_7
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->g:Ljava/util/LinkedList;

    const-class v1, Lcom/tapjoy/TJConnectListener;

    invoke-static {p4, v1}, Lcom/tapjoy/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 72
    :cond_12
    new-instance p4, Lcom/tapjoy/internal/gd$a;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/tapjoy/internal/gd$a;-><init>(Lcom/tapjoy/internal/gd;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 75
    sget-object p1, Lcom/tapjoy/internal/gd$3;->a:[I

    iget p2, p0, Lcom/tapjoy/internal/gd;->b:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    aget p1, p1, p2

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_88

    .line 98
    sget p1, Lcom/tapjoy/internal/gd$c;->a:I

    goto :goto_78

    .line 91
    :pswitch_26
    iput-object p4, p0, Lcom/tapjoy/internal/gd;->h:Lcom/tapjoy/internal/gd$a;

    .line 92
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd;->b()V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_81

    .line 102
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    return p3

    .line 88
    :pswitch_31
    :try_start_31
    iput-object p4, p0, Lcom/tapjoy/internal/gd;->h:Lcom/tapjoy/internal/gd$a;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_81

    .line 102
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    return p3

    .line 80
    :pswitch_39
    nop

    .line 1141
    :try_start_3a
    iput-object p4, p0, Lcom/tapjoy/internal/gd;->e:Lcom/tapjoy/internal/gd$a;

    .line 1143
    sget-object p1, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    new-instance v0, Lcom/tapjoy/internal/gd$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gd$1;-><init>(Lcom/tapjoy/internal/gd;)V

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/ft$a;->addObserver(Ljava/util/Observer;)V

    .line 1155
    iget-object p1, p4, Lcom/tapjoy/internal/gd$a;->a:Landroid/content/Context;

    iget-object v0, p4, Lcom/tapjoy/internal/gd$a;->b:Ljava/lang/String;

    iget-object p4, p4, Lcom/tapjoy/internal/gd$a;->c:Ljava/util/Hashtable;

    new-instance v1, Lcom/tapjoy/internal/gd$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/gd$2;-><init>(Lcom/tapjoy/internal/gd;)V

    .line 1156
    invoke-virtual {p0, p1, v0, p4, v1}, Lcom/tapjoy/internal/gd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    .line 80
    if-eqz p1, :cond_64

    .line 81
    sget p1, Lcom/tapjoy/internal/gd$c;->b:I

    sget p2, Lcom/tapjoy/internal/gd$c;->a:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gd;->a(I)V
    :try_end_5e
    .catchall {:try_start_3a .. :try_end_5e} :catchall_81

    .line 102
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    return p3

    .line 84
    :cond_64
    :try_start_64
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->g:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_81

    .line 102
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    return p2

    .line 77
    :pswitch_6f
    :try_start_6f
    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/gd;->a(Z)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_81

    .line 102
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    return p3

    .line 98
    :goto_78
    :try_start_78
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gd;->a(I)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_81

    .line 102
    iget-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    return p2

    .line 102
    :catchall_81
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/internal/gd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    throw p1

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_39
        :pswitch_31
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method
