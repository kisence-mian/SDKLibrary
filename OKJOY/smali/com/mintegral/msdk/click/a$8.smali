.class final Lcom/mintegral/msdk/click/a$8;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;IZLjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic d:Lcom/mintegral/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/a;ZZLcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/mintegral/msdk/click/a$8;->d:Lcom/mintegral/msdk/click/a;

    iput-boolean p2, p0, Lcom/mintegral/msdk/click/a$8;->a:Z

    iput-boolean p3, p0, Lcom/mintegral/msdk/click/a$8;->b:Z

    iput-object p4, p0, Lcom/mintegral/msdk/click/a$8;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1068
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a$8;->a:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/mintegral/msdk/click/a;->a:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/mintegral/msdk/click/a$8;->d:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->d(Lcom/mintegral/msdk/click/a;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->NATIVE_SHOW_LOADINGPAGER:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a$8;->b:Z

    if-nez v0, :cond_1f

    .line 1070
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$8;->d:Lcom/mintegral/msdk/click/a;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$8;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1072
    :cond_1f
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a$8;->a:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/mintegral/msdk/click/a$8;->d:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_46

    sget-boolean v0, Lcom/mintegral/msdk/click/a;->a:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/mintegral/msdk/click/a$8;->d:Lcom/mintegral/msdk/click/a;

    .line 1073
    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->d(Lcom/mintegral/msdk/click/a;)Z

    move-result v0

    if-nez v0, :cond_46

    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->NATIVE_SHOW_LOADINGPAGER:Z

    if-eqz v0, :cond_46

    .line 1075
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$8;->d:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$8;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onShowLoading(Lcom/mintegral/msdk/out/Campaign;)V

    .line 1077
    :cond_46
    return-void
.end method
