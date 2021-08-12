.class public final Lcom/anythink/basead/a/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/basead/a/a/b;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 3

    .line 39
    sget-object v0, Lcom/anythink/basead/a/a/b;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public static a(Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)Z
    .registers 6

    .line 55
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 56
    return v0

    .line 58
    :cond_4
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/d/h;->a(Lcom/anythink/core/common/d/j;)Ljava/util/List;

    move-result-object p0

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 60
    const/4 v1, 0x1

    if-lez p1, :cond_23

    .line 61
    move v2, v0

    :goto_10
    if-ge v2, p1, :cond_22

    .line 62
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/basead/a/a/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 63
    return v0

    .line 61
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 66
    :cond_22
    return v1

    .line 68
    :cond_23
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 34
    sget-object v0, Lcom/anythink/basead/a/a/b;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 35
    const/4 v0, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_11

    :cond_10
    move p0, v0

    :goto_11
    const/4 v1, 0x1

    if-ne v1, p0, :cond_15

    return v1

    :cond_15
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 5

    .line 47
    nop

    .line 1114
    invoke-static {p0}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    nop

    .line 48
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    .line 1217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1218
    const/4 p0, 0x0

    return p0

    .line 1220
    :cond_1a
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    .line 48
    return p0
.end method
