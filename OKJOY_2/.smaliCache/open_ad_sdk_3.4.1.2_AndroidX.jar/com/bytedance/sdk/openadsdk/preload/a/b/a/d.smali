.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    .line 39
    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/a/b;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/c;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/a/b;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "*>;"
        }
    .end annotation

    .line 55
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/c;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/i;->a()Ljava/lang/Object;

    move-result-object p1

    .line 58
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/v;

    if-eqz v0, :cond_17

    .line 59
    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/v;

    goto :goto_7b

    .line 60
    :cond_17
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/w;

    if-eqz v0, :cond_22

    .line 61
    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/w;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p1

    goto :goto_7b

    .line 62
    :cond_22
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/s;

    if-nez v0, :cond_60

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-eqz v1, :cond_2b

    goto :goto_60

    .line 71
    :cond_2b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " as a @JsonAdapter for "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 63
    :cond_60
    :goto_60
    const/4 v1, 0x0

    if-eqz v0, :cond_68

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/s;

    move-object v3, v0

    goto :goto_69

    :cond_68
    move-object v3, v1

    .line 66
    :goto_69
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-eqz v0, :cond_70

    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    :cond_70
    move-object v4, v1

    .line 69
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/s;Lcom/bytedance/sdk/openadsdk/preload/a/k;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/w;)V

    .line 70
    nop

    .line 77
    :goto_7b
    if-eqz p1, :cond_87

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;->b()Z

    move-result p2

    if-eqz p2, :cond_87

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a()Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p1

    .line 81
    :cond_87
    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;

    .line 46
    if-nez v0, :cond_10

    .line 47
    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/a/b;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p1

    return-object p1
.end method
