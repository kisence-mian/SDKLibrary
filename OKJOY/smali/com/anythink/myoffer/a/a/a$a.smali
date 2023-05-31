.class public final Lcom/anythink/myoffer/a/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/a/a/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/a/a;

.field private final b:Lcom/anythink/myoffer/a/a/a$b;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$b;)V
    .registers 3

    .prologue
    .line 744
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/a$a;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput-object p2, p0, Lcom/anythink/myoffer/a/a/a$a;->b:Lcom/anythink/myoffer/a/a/a$b;

    .line 746
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$b;B)V
    .registers 4

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/anythink/myoffer/a/a/a$a;-><init>(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$b;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a;->b:Lcom/anythink/myoffer/a/a/a$b;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 791
    const/4 v2, 0x0

    .line 793
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/anythink/myoffer/a/a/a$a;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {}, Lcom/anythink/myoffer/a/a/a;->a()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 794
    :try_start_e
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1b

    .line 796
    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/Closeable;)V

    .line 797
    return-void

    .line 796
    :catchall_15
    move-exception v0

    move-object v1, v2

    :goto_17
    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1b
    move-exception v0

    goto :goto_17
.end method

.method private b(I)Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 753
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$a;->a:Lcom/anythink/myoffer/a/a/a;

    monitor-enter v1

    .line 754
    :try_start_3
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a;->b:Lcom/anythink/myoffer/a/a/a$b;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 755
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 761
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 757
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a;->b:Lcom/anythink/myoffer/a/a/a$b;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->e(Lcom/anythink/myoffer/a/a/a$b;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 758
    const/4 v0, 0x0

    monitor-exit v1

    .line 760
    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/a$a;->b:Lcom/anythink/myoffer/a/a/a$b;

    invoke-virtual {v2, p1}, Lcom/anythink/myoffer/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_11

    goto :goto_1e
.end method

.method static synthetic b(Lcom/anythink/myoffer/a/a/a$a;)Z
    .registers 2

    .prologue
    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/a/a/a$a;->c:Z

    return v0
.end method

.method private c(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/anythink/myoffer/a/a/a$a;->b(I)Ljava/io/InputStream;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final a(I)Ljava/io/OutputStream;
    .registers 6

    .prologue
    .line 779
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$a;->a:Lcom/anythink/myoffer/a/a/a;

    monitor-enter v1

    .line 780
    :try_start_3
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a;->b:Lcom/anythink/myoffer/a/a/a$b;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 781
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 784
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 783
    :cond_14
    :try_start_14
    new-instance v0, Lcom/anythink/myoffer/a/a/a$a$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/anythink/myoffer/a/a/a$a;->b:Lcom/anythink/myoffer/a/a/a$b;

    invoke-virtual {v3, p1}, Lcom/anythink/myoffer/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/anythink/myoffer/a/a/a$a$a;-><init>(Lcom/anythink/myoffer/a/a/a$a;Ljava/io/OutputStream;B)V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    return-object v0
.end method

.method public final a()V
    .registers 3

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/a/a$a;->c:Z

    if-eqz v0, :cond_16

    .line 806
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a;->a:Lcom/anythink/myoffer/a/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/anythink/myoffer/a/a/a;->a(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$a;Z)V

    .line 807
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a;->a:Lcom/anythink/myoffer/a/a/a;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$a;->b:Lcom/anythink/myoffer/a/a/a$b;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a$b;->d(Lcom/anythink/myoffer/a/a/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/a/a/a;->c(Ljava/lang/String;)Z

    .line 811
    :goto_15
    return-void

    .line 809
    :cond_16
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a;->a:Lcom/anythink/myoffer/a/a/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/anythink/myoffer/a/a/a;->a(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$a;Z)V

    goto :goto_15
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a;->a:Lcom/anythink/myoffer/a/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/anythink/myoffer/a/a/a;->a(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$a;Z)V

    .line 819
    return-void
.end method
