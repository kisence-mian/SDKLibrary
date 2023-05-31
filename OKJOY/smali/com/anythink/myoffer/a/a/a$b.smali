.class final Lcom/anythink/myoffer/a/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/a/a;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/anythink/myoffer/a/a/a$a;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 879
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/a$b;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-object p2, p0, Lcom/anythink/myoffer/a/a/a$b;->b:Ljava/lang/String;

    .line 881
    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a;->f(Lcom/anythink/myoffer/a/a/a;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/a$b;->c:[J

    .line 882
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;B)V
    .registers 4

    .prologue
    .line 864
    invoke-direct {p0, p1, p2}, Lcom/anythink/myoffer/a/a/a$b;-><init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/a$b;J)J
    .registers 4

    .prologue
    .line 864
    iput-wide p1, p0, Lcom/anythink/myoffer/a/a/a$b;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/a$b;Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$a;
    .registers 2

    .prologue
    .line 864
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/a$b;->e:Lcom/anythink/myoffer/a/a/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/a$b;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1896
    array-length v0, p1

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$b;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a;->f(Lcom/anythink/myoffer/a/a/a;)I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 1897
    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1901
    :cond_e
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 1902
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$b;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1f

    .line 1901
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1905
    :catch_1f
    move-exception v0

    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1906
    :cond_25
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 896
    array-length v0, p1

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$b;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a;->f(Lcom/anythink/myoffer/a/a/a;)I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 897
    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 901
    :cond_e
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 902
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$b;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1f

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 905
    :catch_1f
    move-exception v0

    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 906
    :cond_25
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/a$b;)Z
    .registers 2

    .prologue
    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/a/a/a$b;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$b;->e:Lcom/anythink/myoffer/a/a/a$a;

    return-object v0
.end method

.method private static b([Ljava/lang/String;)Ljava/io/IOException;
    .registers 4

    .prologue
    .line 910
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/anythink/myoffer/a/a/a$b;)[J
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$b;->c:[J

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/myoffer/a/a/a$b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/myoffer/a/a/a$b;)Z
    .registers 2

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/a/a$b;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/anythink/myoffer/a/a/a$b;)J
    .registers 3

    .prologue
    .line 864
    iget-wide v0, p0, Lcom/anythink/myoffer/a/a/a$b;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .registers 6

    .prologue
    .line 914
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$b;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a;->g(Lcom/anythink/myoffer/a/a/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/myoffer/a/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 8

    .prologue
    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    iget-object v2, p0, Lcom/anythink/myoffer/a/a/a$b;->c:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_19

    aget-wide v4, v2, v0

    .line 887
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 889
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/io/File;
    .registers 6

    .prologue
    .line 918
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$b;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a;->g(Lcom/anythink/myoffer/a/a/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/myoffer/a/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
