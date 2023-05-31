.class Lcom/tencent/smtt/utils/x$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/utils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/utils/x;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/utils/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tencent/smtt/utils/x;Ljava/io/File;)V
    .registers 4

    iput-object p1, p0, Lcom/tencent/smtt/utils/x$b;->a:Lcom/tencent/smtt/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/utils/x$b;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/smtt/utils/x$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0, p2}, Lcom/tencent/smtt/utils/x$b;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    :goto_14
    array-length v2, v1

    if-ge v0, v2, :cond_12

    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/tencent/smtt/utils/x$b;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/utils/x$b;->a(Ljava/lang/String;JJ)V

    goto :goto_12
.end method

.method private a(Ljava/lang/String;JJ)V
    .registers 14

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_29

    cmp-long v0, p2, v2

    if-lez v0, :cond_29

    cmp-long v0, p4, v2

    if-lez v0, :cond_29

    new-instance v1, Lcom/tencent/smtt/utils/x$a;

    iget-object v2, p0, Lcom/tencent/smtt/utils/x$b;->a:Lcom/tencent/smtt/utils/x;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/tencent/smtt/utils/x$a;-><init>(Lcom/tencent/smtt/utils/x;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/tencent/smtt/utils/x$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/utils/x$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/utils/x$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/utils/x$b;->b:Ljava/util/Map;

    return-object v0
.end method
