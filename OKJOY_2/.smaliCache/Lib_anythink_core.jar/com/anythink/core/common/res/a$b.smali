.class final Lcom/anythink/core/common/res/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/res/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/res/a;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/anythink/core/common/res/a$a;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/res/a;Ljava/lang/String;)V
    .registers 3

    .line 869
    iput-object p1, p0, Lcom/anythink/core/common/res/a$b;->a:Lcom/anythink/core/common/res/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p2, p0, Lcom/anythink/core/common/res/a$b;->b:Ljava/lang/String;

    .line 871
    invoke-static {p1}, Lcom/anythink/core/common/res/a;->f(Lcom/anythink/core/common/res/a;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/anythink/core/common/res/a$b;->c:[J

    .line 872
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/core/common/res/a;Ljava/lang/String;B)V
    .registers 4

    .line 854
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/res/a$b;-><init>(Lcom/anythink/core/common/res/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/res/a$b;J)J
    .registers 3

    .line 854
    iput-wide p1, p0, Lcom/anythink/core/common/res/a$b;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/anythink/core/common/res/a$b;Lcom/anythink/core/common/res/a$a;)Lcom/anythink/core/common/res/a$a;
    .registers 2

    .line 854
    iput-object p1, p0, Lcom/anythink/core/common/res/a$b;->e:Lcom/anythink/core/common/res/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/core/common/res/a$b;[Ljava/lang/String;)V
    .registers 6

    .line 1886
    array-length v0, p1

    iget-object v1, p0, Lcom/anythink/core/common/res/a$b;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->f(Lcom/anythink/core/common/res/a;)I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 1891
    const/4 v0, 0x0

    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 1892
    iget-object v1, p0, Lcom/anythink/core/common/res/a$b;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    .line 1891
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1896
    :cond_1a
    return-void

    .line 1894
    :catch_1b
    move-exception p0

    .line 1895
    invoke-static {p1}, Lcom/anythink/core/common/res/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 1887
    :cond_21
    invoke-static {p1}, Lcom/anythink/core/common/res/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private a([Ljava/lang/String;)V
    .registers 6

    .line 886
    array-length v0, p1

    iget-object v1, p0, Lcom/anythink/core/common/res/a$b;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->f(Lcom/anythink/core/common/res/a;)I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 891
    const/4 v0, 0x0

    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 892
    iget-object v1, p0, Lcom/anythink/core/common/res/a$b;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 896
    :cond_1a
    return-void

    .line 894
    :catch_1b
    move-exception v0

    .line 895
    invoke-static {p1}, Lcom/anythink/core/common/res/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 887
    :cond_21
    invoke-static {p1}, Lcom/anythink/core/common/res/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic a(Lcom/anythink/core/common/res/a$b;)Z
    .registers 2

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/res/a$b;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/anythink/core/common/res/a$b;)Lcom/anythink/core/common/res/a$a;
    .registers 1

    .line 854
    iget-object p0, p0, Lcom/anythink/core/common/res/a$b;->e:Lcom/anythink/core/common/res/a$a;

    return-object p0
.end method

.method private static b([Ljava/lang/String;)Ljava/io/IOException;
    .registers 4

    .line 900
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/anythink/core/common/res/a$b;)[J
    .registers 1

    .line 854
    iget-object p0, p0, Lcom/anythink/core/common/res/a$b;->c:[J

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/core/common/res/a$b;)Ljava/lang/String;
    .registers 1

    .line 854
    iget-object p0, p0, Lcom/anythink/core/common/res/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/core/common/res/a$b;)Z
    .registers 1

    .line 854
    iget-boolean p0, p0, Lcom/anythink/core/common/res/a$b;->d:Z

    return p0
.end method

.method static synthetic f(Lcom/anythink/core/common/res/a$b;)J
    .registers 3

    .line 854
    iget-wide v0, p0, Lcom/anythink/core/common/res/a$b;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .registers 6

    .line 904
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/core/common/res/a$b;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->g(Lcom/anythink/core/common/res/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/core/common/res/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 8

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    iget-object v1, p0, Lcom/anythink/core/common/res/a$b;->c:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-wide v4, v1, v3

    .line 877
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 876
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 879
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/io/File;
    .registers 6

    .line 908
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/core/common/res/a$b;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->g(Lcom/anythink/core/common/res/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/core/common/res/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".tmp"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
