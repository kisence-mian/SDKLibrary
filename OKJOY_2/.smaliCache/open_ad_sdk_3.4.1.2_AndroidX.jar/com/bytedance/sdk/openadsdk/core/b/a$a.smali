.class Lcom/bytedance/sdk/openadsdk/core/b/a$a;
.super Ljava/lang/Object;
.source "FrequentCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->a:J

    .line 153
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b:Ljava/lang/String;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/b/a$1;)V
    .registers 5

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)J
    .registers 3

    .line 147
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b:Ljava/lang/String;

    return-object p0
.end method
