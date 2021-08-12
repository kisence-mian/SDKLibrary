.class final Lcom/bytedance/sdk/openadsdk/utils/d$2;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "AdLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/j/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/j/f;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/d$2;->a:Lcom/bytedance/sdk/openadsdk/j/f;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/d$2;->a:Lcom/bytedance/sdk/openadsdk/j/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/f;->run()V

    .line 148
    return-void
.end method
