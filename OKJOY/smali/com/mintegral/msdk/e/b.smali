.class public Lcom/mintegral/msdk/e/b;
.super Ljava/lang/Object;
.source "TimerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/e/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mintegral/msdk/e/b;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mintegral/msdk/e/b;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/mintegral/msdk/e/b$a;->a:Lcom/mintegral/msdk/e/b;

    return-object v0
.end method


# virtual methods
.method public addInterstitialList(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2070
    sget-object v0, Lcom/mintegral/msdk/e/a$a;->a:Lcom/mintegral/msdk/e/a;

    .line 33
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/e/a;->b(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public addRewardList(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1070
    sget-object v0, Lcom/mintegral/msdk/e/a$a;->a:Lcom/mintegral/msdk/e/a;

    .line 27
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/e/a;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 39
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 40
    if-nez v0, :cond_18

    .line 41
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 43
    :cond_18
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->b()I

    move-result v0

    .line 44
    if-lez v0, :cond_26

    .line 3070
    sget-object v1, Lcom/mintegral/msdk/e/a$a;->a:Lcom/mintegral/msdk/e/a;

    .line 45
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/e/a;->a(J)V

    .line 47
    :cond_26
    return-void
.end method
