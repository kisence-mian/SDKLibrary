.class public final Lcom/mintegral/msdk/videocommon/download/b;
.super Ljava/lang/Object;
.source "DownLoadH5SourceListener.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/g$b;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/download/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mintegral/msdk/videocommon/download/j;

.field private d:Lcom/mintegral/msdk/videocommon/download/g$c;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "DownLoadH5SourceListener"

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;Lcom/mintegral/msdk/videocommon/download/j;Lcom/mintegral/msdk/videocommon/download/g$c;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/download/b;",
            ">;",
            "Lcom/mintegral/msdk/videocommon/download/j;",
            "Lcom/mintegral/msdk/videocommon/download/g$c;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 24
    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/download/b;->c:Lcom/mintegral/msdk/videocommon/download/j;

    .line 25
    iput-object p3, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    .line 26
    iput-object p4, p0, Lcom/mintegral/msdk/videocommon/download/b;->e:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/videocommon/download/g$c;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    .line 31
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_12

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    if-eqz v0, :cond_11

    .line 87
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    const-string v1, "mResDownloadingMap  is null"

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/download/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_11
    :goto_11
    return-void

    .line 91
    :cond_12
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_2f

    .line 104
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    if-eqz v0, :cond_11

    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->e:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/videocommon/download/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 94
    :catch_2f
    move-exception v0

    .line 95
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_37

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :cond_37
    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_3c

    move-result-object p1

    goto :goto_23

    .line 100
    :catch_3c
    move-exception v0

    .line 101
    sget-object v1, Lcom/mintegral/msdk/videocommon/download/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method public final a([BLjava/lang/String;)V
    .registers 7

    .prologue
    .line 39
    const-string v0, ""

    .line 41
    :try_start_2
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    if-nez v1, :cond_12

    .line 42
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    if-eqz v1, :cond_11

    .line 43
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    const-string v2, "mResDownloadingMap  is null"

    invoke-interface {v1, v2, p2}, Lcom/mintegral/msdk/videocommon/download/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_11
    :goto_11
    return-void

    .line 47
    :cond_12
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 48
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1f
    if-eqz p1, :cond_60

    array-length v1, p1

    if-lez v1, :cond_60

    .line 53
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->c:Lcom/mintegral/msdk/videocommon/download/j;

    invoke-virtual {v1, p2, p1}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 54
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    if-eqz v1, :cond_46

    .line 55
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    invoke-interface {v1, p2}, Lcom/mintegral/msdk/videocommon/download/g$c;->a(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    goto :goto_11

    .line 65
    :catch_3a
    move-exception v1

    .line 66
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_42

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_63

    move-result-object v0

    .line 76
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    if-eqz v1, :cond_11

    .line 77
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/b;->d:Lcom/mintegral/msdk/videocommon/download/g$c;

    invoke-interface {v1, v0, p2}, Lcom/mintegral/msdk/videocommon/download/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 59
    :cond_50
    :try_start_50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data save failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 62
    :cond_60
    const-string v0, "response data is error"
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_62} :catch_3a

    goto :goto_46

    .line 71
    :catch_63
    move-exception v1

    .line 72
    sget-object v2, Lcom/mintegral/msdk/videocommon/download/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46
.end method
