.class final Lcom/bytedance/sdk/openadsdk/e/a/g$a;
.super Ljava/lang/Object;
.source "CallHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/e/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/g$a;->a:Z

    .line 224
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a/g$a;->b:Ljava/lang/String;

    .line 225
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/g$1;)V
    .registers 4

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/a/g$a;-><init>(ZLjava/lang/String;)V

    return-void
.end method
