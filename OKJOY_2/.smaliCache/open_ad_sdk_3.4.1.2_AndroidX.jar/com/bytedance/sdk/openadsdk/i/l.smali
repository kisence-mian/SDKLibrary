.class public Lcom/bytedance/sdk/openadsdk/i/l;
.super Ljava/lang/Object;
.source "Urls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/i/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:I

.field private f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/l;->a:Ljava/util/Set;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/l;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/l;->e:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/l;->c:Ljava/util/ArrayList;

    .line 71
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/l$a;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/i/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/i/l;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->d:I

    .line 73
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->g:I

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/l;->e:I

    .line 27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/l;->d:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->c:Ljava/util/ArrayList;

    .line 34
    nop

    .line 35
    nop

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/l$a;

    invoke-direct {v3, p0, v2}, Lcom/bytedance/sdk/openadsdk/i/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/i/l;Ljava/lang/String;)V

    .line 38
    sget-object v4, Lcom/bytedance/sdk/openadsdk/i/l;->a:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 39
    if-nez v1, :cond_41

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :cond_41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 43
    :cond_45
    sget-object v4, Lcom/bytedance/sdk/openadsdk/i/l;->b:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 44
    if-nez v0, :cond_54

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :cond_54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 49
    :cond_58
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_5d
    goto :goto_21

    .line 52
    :cond_5e
    if-eqz v0, :cond_65

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_65
    if-eqz v1, :cond_6c

    .line 56
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_6c
    sget-object p1, Lcom/bytedance/sdk/openadsdk/i/e;->i:Ljava/lang/Integer;

    .line 61
    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_77

    goto :goto_7c

    .line 64
    :cond_77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_84

    .line 62
    :cond_7c
    :goto_7c
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->d:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_83

    const/4 p1, 0x1

    goto :goto_84

    :cond_83
    move p1, v0

    .line 66
    :goto_84
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->g:I

    .line 67
    return-void

    .line 28
    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c()Ljava/util/Set;
    .registers 1

    .line 15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/l;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Set;
    .registers 1

    .line 15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/l;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method a()Z
    .registers 3

    .line 77
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/i/l;->f:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->g:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method b()Lcom/bytedance/sdk/openadsdk/i/l$a;
    .registers 4

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 85
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/i/l;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 86
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->d:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1a

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->e:I

    .line 89
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->f:I

    goto :goto_1c

    .line 91
    :cond_1a
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/l;->e:I

    .line 93
    :goto_1c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/i/l$a;

    .line 94
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/l;->f:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/i/l;->d:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/i/l;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/i/l$a;->b:I

    .line 95
    return-object v0

    .line 82
    :cond_2f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
