.class public final Lcom/mintegral/msdk/reward/c/d;
.super Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;
.source "ReportActivityErrorListener.java"


# instance fields
.field private a:Lcom/mintegral/msdk/reward/a/d;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/a/d;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mintegral/msdk/reward/c/d;->a:Lcom/mintegral/msdk/reward/a/d;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;->a(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/d;->a:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_c

    .line 22
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/d;->a:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/reward/a/d;->a(Ljava/lang/String;)V

    .line 24
    :cond_c
    return-void
.end method
