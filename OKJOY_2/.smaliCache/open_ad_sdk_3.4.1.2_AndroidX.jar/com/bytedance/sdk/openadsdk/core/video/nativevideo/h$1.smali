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

    .line 169
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 172
    const/4 p5, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 174
    return p5

    .line 176
    :cond_5
    if-eqz p2, :cond_65

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_65

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_65

    .line 180
    :cond_14
    const-string p1, "click_start_play"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_34

    .line 181
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz p1, :cond_26

    const-string p1, "click_start"

    goto :goto_28

    :cond_26
    const-string p1, "click_start_detail"

    .line 182
    :goto_28
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p4, p4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p4, v0, p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 183
    return p5

    .line 184
    :cond_34
    const-string p1, "click_open"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 185
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz p1, :cond_56

    .line 186
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p4, p4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_63

    .line 188
    :cond_56
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p4, p4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v0, "click_open_detail"

    invoke-static {p1, p4, p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    :goto_63
    return p5

    .line 193
    :cond_64
    return p5

    .line 177
    :cond_65
    :goto_65
    return p5
.end method
