.class public final Lcom/anythink/myoffer/a/a/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .registers 7

    .prologue
    .line 701
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/a$c;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p2, p0, Lcom/anythink/myoffer/a/a/a$c;->b:Ljava/lang/String;

    .line 703
    iput-wide p3, p0, Lcom/anythink/myoffer/a/a/a$c;->c:J

    .line 704
    iput-object p5, p0, Lcom/anythink/myoffer/a/a/a$c;->d:[Ljava/io/InputStream;

    .line 705
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;J[Ljava/io/InputStream;B)V
    .registers 8

    .prologue
    .line 696
    invoke-direct/range {p0 .. p5}, Lcom/anythink/myoffer/a/a/a$c;-><init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 726
    .line 1719
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$c;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    .line 726
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/anythink/myoffer/a/a/a$a;
    .registers 5

    .prologue
    .line 712
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$c;->a:Lcom/anythink/myoffer/a/a/a;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/anythink/myoffer/a/a/a$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/myoffer/a/a/a;->a(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;J)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$c;->d:[Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final close()V
    .registers 5

    .prologue
    .line 731
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$c;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 732
    invoke-static {v3}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/Closeable;)V

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 734
    :cond_e
    return-void
.end method
