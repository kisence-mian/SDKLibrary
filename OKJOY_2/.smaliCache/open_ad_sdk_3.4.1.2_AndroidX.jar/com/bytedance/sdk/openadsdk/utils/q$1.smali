.class final Lcom/bytedance/sdk/openadsdk/utils/q$1;
.super Ljava/lang/Object;
.source "InstallAppUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/q;->a(Landroid/content/Context;)Lorg/json/JSONArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/q$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/q$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Landroid/content/Context;)V

    .line 62
    return-void
.end method
