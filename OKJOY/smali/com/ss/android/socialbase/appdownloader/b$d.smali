.class Lcom/ss/android/socialbase/appdownloader/b$d;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/ss/android/socialbase/appdownloader/b$b;

.field private final c:Landroid/os/Handler;

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/ss/android/socialbase/appdownloader/b$b;J)V
    .registers 6

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->a:Landroid/content/Context;

    .line 806
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->b:Lcom/ss/android/socialbase/appdownloader/b$b;

    .line 807
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    .line 808
    iput-wide p4, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    .line 809
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 814
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->b:Lcom/ss/android/socialbase/appdownloader/b$b;

    if-eqz v0, :cond_15

    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_15

    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_1b

    .line 815
    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 835
    :goto_1a
    return-object v0

    .line 818
    :cond_1b
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->a:Landroid/content/Context;

    .line 819
    if-eqz v0, :cond_45

    .line 820
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->b:Lcom/ss/android/socialbase/appdownloader/b$b;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/appdownloader/b$b;->a(Landroid/content/Context;)Z

    move-result v0

    .line 822
    :goto_25
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 823
    if-eqz v0, :cond_38

    .line 824
    const/4 v0, 0x2

    iput v0, v2, Landroid/os/Message;->what:I

    .line 825
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_33} :catch_43

    .line 835
    :goto_33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1a

    .line 827
    :cond_38
    const/4 v0, 0x1

    :try_start_39
    iput v0, v2, Landroid/os/Message;->what:I

    .line 828
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_33

    .line 830
    :catch_43
    move-exception v0

    goto :goto_33

    :cond_45
    move v0, v1

    goto :goto_25
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/b$d;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
