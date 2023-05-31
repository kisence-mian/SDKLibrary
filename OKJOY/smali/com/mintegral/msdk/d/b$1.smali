.class final Lcom/mintegral/msdk/d/b$1;
.super Ljava/lang/Object;
.source "ShortCutsManager.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic d:Lcom/mintegral/msdk/d/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/d/b;Landroid/app/Activity;Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mintegral/msdk/d/b$1;->d:Lcom/mintegral/msdk/d/b;

    iput-object p2, p0, Lcom/mintegral/msdk/d/b$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mintegral/msdk/d/b$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/mintegral/msdk/d/b$1;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mintegral/msdk/d/b;->a(Landroid/app/Activity;)V

    .line 198
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v1

    .line 203
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 204
    if-nez v0, :cond_22

    .line 205
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 207
    :cond_22
    iget-object v2, p0, Lcom/mintegral/msdk/d/b$1;->d:Lcom/mintegral/msdk/d/b;

    iget-object v3, p0, Lcom/mintegral/msdk/d/b$1;->b:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/d/b;Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V

    .line 208
    iget-object v2, p0, Lcom/mintegral/msdk/d/b$1;->d:Lcom/mintegral/msdk/d/b;

    const-string v3, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/d/b;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 209
    iget-object v2, p0, Lcom/mintegral/msdk/d/b$1;->d:Lcom/mintegral/msdk/d/b;

    iget-object v3, p0, Lcom/mintegral/msdk/d/b$1;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/d/b;->b(Lcom/mintegral/msdk/d/b;Ljava/lang/String;)I

    move-result v2

    .line 210
    iget-object v3, p0, Lcom/mintegral/msdk/d/b$1;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/mintegral/msdk/d/b$1;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v5, p0, Lcom/mintegral/msdk/d/b$1;->a:Landroid/app/Activity;

    invoke-static {v3, p1, v4, v5}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V

    .line 211
    iget-object v3, p0, Lcom/mintegral/msdk/d/b$1;->d:Lcom/mintegral/msdk/d/b;

    iget-object v4, p0, Lcom/mintegral/msdk/d/b$1;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/d/b;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/c/a;Lcom/mintegral/msdk/base/b/f;I)V

    .line 213
    :cond_4f
    return-void
.end method
