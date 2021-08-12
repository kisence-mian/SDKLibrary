.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/preload/a/w;


# instance fields
.field private final b:Lcom/bytedance/sdk/openadsdk/preload/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;->b:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    if-nez p2, :cond_6

    .line 96
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 97
    return-void

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;->b:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;

    if-eqz v1, :cond_1b

    .line 102
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 103
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 104
    return-void

    .line 107
    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$2;->a:[I

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 85
    :pswitch_15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 86
    const/4 p1, 0x0

    return-object p1

    .line 82
    :pswitch_1a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_23
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_2c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_31
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c()V

    .line 69
    :goto_39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 72
    :cond_4b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d()V

    .line 73
    return-object v0

    .line 58
    :pswitch_4f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a()V

    .line 60
    :goto_57
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 61
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 63
    :cond_65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b()V

    .line 64
    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_31
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method
