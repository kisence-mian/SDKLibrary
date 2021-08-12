.class final Lcom/bytedance/sdk/openadsdk/utils/d$5;
.super Ljava/lang/Object;
.source "AdLocationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/LocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/location/LocationManager;

.field final synthetic b:Landroid/location/LocationListener;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .registers 3

    .line 249
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/d$5;->a:Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/d$5;->b:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/d$5;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/d$5;->b:Landroid/location/LocationListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    .line 253
    return-void
.end method
