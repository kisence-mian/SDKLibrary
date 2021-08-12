.class Lcom/bytedance/sdk/adnet/d/c$c;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/adnet/d/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/bytedance/sdk/adnet/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/d/c;-><init>(Lcom/bytedance/sdk/adnet/d/c$1;)V

    sput-object v0, Lcom/bytedance/sdk/adnet/d/c$c;->a:Lcom/bytedance/sdk/adnet/d/c;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/adnet/d/c;
    .registers 1

    .line 33
    sget-object v0, Lcom/bytedance/sdk/adnet/d/c$c;->a:Lcom/bytedance/sdk/adnet/d/c;

    return-object v0
.end method
