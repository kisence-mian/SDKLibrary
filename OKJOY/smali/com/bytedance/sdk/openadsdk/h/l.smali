.class public Lcom/bytedance/sdk/openadsdk/h/l;
.super Ljava/lang/Object;
.source "Urls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/l$a;",
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

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/l;->a:Ljava/util/Set;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/l;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->e:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->c:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/l$a;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/h/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/h/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/h/l;->d:I

    .line 73
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/h/l;->g:I

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 10
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->e:I

    .line 27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "urls can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->d:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/l;->d:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->c:Ljava/util/ArrayList;

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    new-instance v5, Lcom/bytedance/sdk/openadsdk/h/l$a;

    invoke-direct {v5, p0, v0}, Lcom/bytedance/sdk/openadsdk/h/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/h/l;Ljava/lang/String;)V

    .line 38
    sget-object v6, Lcom/bytedance/sdk/openadsdk/h/l;->a:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 39
    if-nez v2, :cond_98

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :goto_4a
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_50
    move-object v2, v1

    move-object v1, v0

    .line 51
    goto :goto_2a

    .line 43
    :cond_53
    sget-object v6, Lcom/bytedance/sdk/openadsdk/h/l;->b:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 44
    if-nez v1, :cond_96

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :goto_62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_50

    .line 49
    :cond_67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v2

    goto :goto_50

    .line 52
    :cond_6f
    if-eqz v1, :cond_76

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_76
    if-eqz v2, :cond_7d

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_7d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->i:Ljava/lang/Integer;

    .line 61
    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_91

    .line 62
    :cond_87
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->d:I

    if-lt v0, v3, :cond_8f

    const/4 v0, 0x1

    .line 66
    :goto_8c
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->g:I

    .line 67
    return-void

    :cond_8f
    move v0, v3

    .line 62
    goto :goto_8c

    .line 64
    :cond_91
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8c

    :cond_96
    move-object v0, v1

    goto :goto_62

    :cond_98
    move-object v0, v2

    goto :goto_4a
.end method

.method static synthetic c()Ljava/util/Set;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/l;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Set;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/l;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method a()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->f:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/l;->g:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method b()Lcom/bytedance/sdk/openadsdk/h/l$a;
    .registers 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/l;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 82
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 85
    :cond_c
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 86
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/l;->d:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_32

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/h/l;->e:I

    .line 89
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/l;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/h/l;->f:I

    .line 93
    :goto_1f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/l$a;

    .line 94
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/l;->f:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/l;->d:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/l;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/h/l$a;->b:I

    .line 95
    return-object v0

    .line 91
    :cond_32
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/l;->e:I

    goto :goto_1f
.end method
