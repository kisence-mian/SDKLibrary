.class Lcom/bytedance/sdk/adnet/d/d$c;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/adnet/d/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/bytedance/sdk/adnet/d/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;-><init>(Lcom/bytedance/sdk/adnet/d/d$1;)V

    sput-object v0, Lcom/bytedance/sdk/adnet/d/d$c;->a:Lcom/bytedance/sdk/adnet/d/d;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/adnet/d/d;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/bytedance/sdk/adnet/d/d$c;->a:Lcom/bytedance/sdk/adnet/d/d;

    return-object v0
.end method
