.class public Lcom/anythink/basead/g/f;
.super Lcom/anythink/basead/g/c;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private k:Lcom/anythink/basead/f/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/anythink/basead/g/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V
    .registers 5

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/g/c;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/basead/g/f;->k:Lcom/anythink/basead/f/e;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/f/e;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/anythink/basead/g/f;->k:Lcom/anythink/basead/f/e;

    .line 38
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/g/f;->c:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 45
    iget-object p1, p0, Lcom/anythink/basead/g/f;->k:Lcom/anythink/basead/f/e;

    if-eqz p1, :cond_13

    .line 46
    const-string v0, "30001"

    const-string v1, "context = null!"

    invoke-static {v0, v1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/e;->onVideoShowFailed(Lcom/anythink/basead/c/f;)V

    .line 48
    :cond_13
    return-void

    .line 51
    :cond_14
    const-string v0, "extra_request_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "extra_scenario"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "extra_orientation"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/basead/g/f;->d:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/g/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/anythink/basead/f/b;->a()Lcom/anythink/basead/f/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/basead/g/f$1;

    invoke-direct {v3, p0, v1}, Lcom/anythink/basead/g/f$1;-><init>(Lcom/anythink/basead/g/f;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/anythink/basead/f/b;->a(Ljava/lang/String;Lcom/anythink/basead/f/b$b;)V

    .line 123
    new-instance v2, Lcom/anythink/basead/c/a;

    invoke-direct {v2}, Lcom/anythink/basead/c/a;-><init>()V

    .line 124
    iget-object v3, p0, Lcom/anythink/basead/g/f;->g:Lcom/anythink/core/common/d/p;

    iput-object v3, v2, Lcom/anythink/basead/c/a;->c:Lcom/anythink/core/common/d/h;

    .line 125
    iput-object v1, v2, Lcom/anythink/basead/c/a;->d:Ljava/lang/String;

    .line 126
    const/4 v1, 0x1

    iput v1, v2, Lcom/anythink/basead/c/a;->a:I

    .line 127
    iget-object v1, p0, Lcom/anythink/basead/g/f;->d:Lcom/anythink/core/common/d/i;

    iput-object v1, v2, Lcom/anythink/basead/c/a;->g:Lcom/anythink/core/common/d/i;

    .line 128
    iput p1, v2, Lcom/anythink/basead/c/a;->e:I

    .line 129
    iput-object v0, v2, Lcom/anythink/basead/c/a;->b:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/anythink/basead/g/f;->c:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/anythink/basead/ui/BaseAdActivity;->a(Landroid/content/Context;Lcom/anythink/basead/c/a;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_75} :catch_76

    .line 137
    return-void

    .line 132
    :catch_76
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    iget-object v0, p0, Lcom/anythink/basead/g/f;->k:Lcom/anythink/basead/f/e;

    if-eqz v0, :cond_8b

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-9999"

    invoke-static {v1, p1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onVideoShowFailed(Lcom/anythink/basead/c/f;)V

    .line 139
    :cond_8b
    return-void
.end method
