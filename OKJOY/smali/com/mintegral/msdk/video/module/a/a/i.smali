.class public Lcom/mintegral/msdk/video/module/a/a/i;
.super Lcom/mintegral/msdk/video/module/a/a/f;
.source "ProxyOnNotifyListener.java"


# instance fields
.field protected b:Lcom/mintegral/msdk/video/module/a/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/a/a/f;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/i;->b:Lcom/mintegral/msdk/video/module/a/a;

    .line 16
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/i;->b:Lcom/mintegral/msdk/video/module/a/a;

    if-eqz v0, :cond_c

    .line 22
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/i;->b:Lcom/mintegral/msdk/video/module/a/a;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 24
    :cond_c
    return-void
.end method
