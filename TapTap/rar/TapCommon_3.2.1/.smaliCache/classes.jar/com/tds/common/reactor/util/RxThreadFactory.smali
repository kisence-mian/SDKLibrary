.class public final Lcom/tds/common/reactor/util/RxThreadFactory;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "RxThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final NONE:Ljava/util/concurrent/ThreadFactory;

.field private static final serialVersionUID:J = -0x7ab1e491ecc1649fL


# instance fields
.field final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/tds/common/reactor/util/RxThreadFactory$1;

    invoke-direct {v0}, Lcom/tds/common/reactor/util/RxThreadFactory$1;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/tds/common/reactor/util/RxThreadFactory;->prefix:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tds/common/reactor/util/RxThreadFactory;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tds/common/reactor/util/RxThreadFactory;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 42
    return-object v0
.end method
