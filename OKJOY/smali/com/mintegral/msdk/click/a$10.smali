.class final Lcom/mintegral/msdk/click/a$10;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mintegral/msdk/out/Campaign;

.field final synthetic c:Lcom/mintegral/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/a;ZLcom/mintegral/msdk/out/Campaign;)V
    .registers 4

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/mintegral/msdk/click/a$10;->c:Lcom/mintegral/msdk/click/a;

    iput-boolean p2, p0, Lcom/mintegral/msdk/click/a$10;->a:Z

    iput-object p3, p0, Lcom/mintegral/msdk/click/a$10;->b:Lcom/mintegral/msdk/out/Campaign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a$10;->a:Z

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/mintegral/msdk/click/a;->a:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->NATIVE_SHOW_LOADINGPAGER:Z

    if-eqz v0, :cond_11

    .line 1172
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$10;->c:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->g(Lcom/mintegral/msdk/click/a;)V

    .line 1174
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$10;->c:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    sget-boolean v0, Lcom/mintegral/msdk/click/a;->a:Z

    if-nez v0, :cond_2c

    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->NATIVE_SHOW_LOADINGPAGER:Z

    if-eqz v0, :cond_2c

    .line 1175
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$10;->c:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$10;->b:Lcom/mintegral/msdk/out/Campaign;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V

    .line 1177
    :cond_2c
    return-void
.end method
