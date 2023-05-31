.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 168
    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    .line 189
    :cond_6
    :goto_6
    return v0

    .line 172
    :cond_7
    if-eqz p2, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 176
    const-string v2, "click_start_play"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_32

    const-string v0, "click_start"

    .line 178
    :goto_25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v2, v3, p3, v0, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v1

    .line 179
    goto :goto_6

    .line 177
    :cond_32
    const-string v0, "click_start_detail"

    goto :goto_25

    .line 180
    :cond_35
    const-string v2, "click_open"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_58

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->q(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_56
    move v0, v1

    .line 186
    goto :goto_6

    .line 184
    :cond_58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "click_open_detail"

    invoke-static {v0, v2, p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_56
.end method
