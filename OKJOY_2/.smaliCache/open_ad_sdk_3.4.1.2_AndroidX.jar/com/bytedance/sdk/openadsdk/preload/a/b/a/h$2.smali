.class synthetic Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$2;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->values()[Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$2;->a:[I

    :try_start_9
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$2;->a:[I

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->c:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$2;->a:[I

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$2;->a:[I

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$2;->a:[I

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->h:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$2;->a:[I

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    return-void
.end method
