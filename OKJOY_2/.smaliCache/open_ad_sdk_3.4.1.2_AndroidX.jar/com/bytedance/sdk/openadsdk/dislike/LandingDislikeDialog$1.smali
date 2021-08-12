.class Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$1;
.super Ljava/lang/Object;
.source "LandingDislikeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a(Z)V

    .line 71
    return-void
.end method
