.class public Lcom/mintegral/msdk/video/js/factory/a;
.super Ljava/lang/Object;
.source "DefaultJSFactory.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/factory/IJSFactory;


# instance fields
.field protected a:Lcom/mintegral/msdk/video/js/a;

.field protected b:Lcom/mintegral/msdk/video/js/b;

.field protected c:Lcom/mintegral/msdk/video/js/h;

.field protected d:Lcom/mintegral/msdk/video/js/e;

.field protected e:Lcom/mintegral/msdk/video/js/d;

.field protected f:Lcom/mintegral/msdk/video/js/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityProxy()Lcom/mintegral/msdk/video/js/a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->a:Lcom/mintegral/msdk/video/js/a;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/mintegral/msdk/video/js/a/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/a/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->a:Lcom/mintegral/msdk/video/js/a;

    .line 34
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->a:Lcom/mintegral/msdk/video/js/a;

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->f:Lcom/mintegral/msdk/video/js/g;

    if-nez v0, :cond_b

    .line 72
    new-instance v0, Lcom/mintegral/msdk/video/js/a/e;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/a/e;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->f:Lcom/mintegral/msdk/video/js/g;

    .line 74
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->f:Lcom/mintegral/msdk/video/js/g;

    return-object v0
.end method

.method public getJSCommon()Lcom/mintegral/msdk/video/js/b;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->b:Lcom/mintegral/msdk/video/js/b;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/mintegral/msdk/video/js/a/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/a/b;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->b:Lcom/mintegral/msdk/video/js/b;

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->b:Lcom/mintegral/msdk/video/js/b;

    return-object v0
.end method

.method public getJSContainerModule()Lcom/mintegral/msdk/video/js/d;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->e:Lcom/mintegral/msdk/video/js/d;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Lcom/mintegral/msdk/video/js/a/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/a/c;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->e:Lcom/mintegral/msdk/video/js/d;

    .line 66
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->e:Lcom/mintegral/msdk/video/js/d;

    return-object v0
.end method

.method public getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->d:Lcom/mintegral/msdk/video/js/e;

    if-nez v0, :cond_b

    .line 56
    new-instance v0, Lcom/mintegral/msdk/video/js/a/d;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/a/d;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->d:Lcom/mintegral/msdk/video/js/e;

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->d:Lcom/mintegral/msdk/video/js/e;

    return-object v0
.end method

.method public getJSVideoModule()Lcom/mintegral/msdk/video/js/h;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->c:Lcom/mintegral/msdk/video/js/h;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/mintegral/msdk/video/js/a/f;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/a/f;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->c:Lcom/mintegral/msdk/video/js/h;

    .line 50
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/a;->c:Lcom/mintegral/msdk/video/js/h;

    return-object v0
.end method
