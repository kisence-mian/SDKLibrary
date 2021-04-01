.class final Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$4;
.super Lcom/mintegral/msdk/widget/a;
.source "MintegralNativeEndCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    invoke-direct {p0}, Lcom/mintegral/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 233
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_1b

    .line 234
    :try_start_6
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_11} :catch_23

    .line 238
    :goto_11
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    iget-object v1, v1, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v2, 0x69

    invoke-interface {v1, v2, v0}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 239
    return-void

    .line 236
    :catch_1b
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1f
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_11

    :catch_23
    move-exception v1

    goto :goto_1f
.end method
