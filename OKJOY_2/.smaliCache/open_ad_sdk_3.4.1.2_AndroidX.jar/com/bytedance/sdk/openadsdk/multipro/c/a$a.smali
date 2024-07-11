.class Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;
.super Ljava/lang/Object;
.source "AdEventProviderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;->a:Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 437
    goto :goto_c

    .line 436
    :catchall_b
    move-exception p1

    .line 438
    :goto_c
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;
    .registers 1

    .line 426
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;
    .registers 2

    .line 430
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;->a:Lorg/json/JSONObject;

    return-object v0
.end method
