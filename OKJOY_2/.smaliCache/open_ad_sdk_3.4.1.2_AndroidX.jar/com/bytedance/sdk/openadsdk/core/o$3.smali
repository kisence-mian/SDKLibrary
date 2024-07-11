.class Lcom/bytedance/sdk/openadsdk/core/o$3;
.super Ljava/lang/Object;
.source "InteractionManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/o;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 4

    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->b:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 151
    :cond_11
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 12

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o;->c(Lcom/bytedance/sdk/openadsdk/core/o;)Ljava/util/List;

    move-result-object v1

    const-string v2, "alpha"

    const-string v3, "height"

    const-string v4, "width"

    if-eqz v1, :cond_5a

    .line 165
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 166
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/o;->c(Lcom/bytedance/sdk/openadsdk/core/o;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 167
    if-eqz v6, :cond_50

    .line 168
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 170
    :try_start_35
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_4c

    .line 174
    goto :goto_4d

    .line 173
    :catchall_4c
    move-exception v6

    .line 175
    :goto_4d
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 177
    :cond_50
    goto :goto_22

    .line 178
    :cond_51
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "image_view"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_5a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8a

    .line 181
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 183
    :try_start_63
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_7f
    .catchall {:try_start_63 .. :try_end_7f} :catchall_80

    .line 187
    goto :goto_81

    .line 186
    :catchall_80
    move-exception v2

    .line 188
    :goto_81
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "root_view"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_8a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o;->d(Lcom/bytedance/sdk/openadsdk/core/o;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o;->e(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/o;->f(Lcom/bytedance/sdk/openadsdk/core/o;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pangolin ad show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o;->e(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdEvent"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->b:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    if-eqz p1, :cond_ce

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 195
    :cond_ce
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 138
    if-eqz p1, :cond_14

    .line 139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    goto :goto_1d

    .line 141
    :cond_14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 144
    :cond_1d
    :goto_1d
    return-void
.end method

.method public b()V
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$3;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 158
    :cond_11
    return-void
.end method
