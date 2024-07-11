.class public final Lcom/anythink/core/common/res/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/res/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/res/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/res/a;

.field private final b:Lcom/anythink/core/common/res/a$b;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$b;)V
    .registers 3

    .line 734
    iput-object p1, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p2, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    .line 736
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$b;B)V
    .registers 4

    .line 730
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/res/a$a;-><init>(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/res/a$a;)Lcom/anythink/core/common/res/a$b;
    .registers 1

    .line 730
    iget-object p0, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    .line 781
    nop

    .line 783
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/res/a$a;->a(I)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/res/a;->a()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_19

    .line 784
    :try_start_f
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 786
    invoke-static {v1}, Lcom/anythink/core/common/res/a;->a(Ljava/io/Closeable;)V

    .line 787
    return-void

    .line 786
    :catchall_16
    move-exception p1

    move-object v0, v1

    goto :goto_1a

    :catchall_19
    move-exception p1

    :goto_1a
    invoke-static {v0}, Lcom/anythink/core/common/res/a;->a(Ljava/io/Closeable;)V

    .line 787
    throw p1
.end method

.method private b(I)Ljava/io/InputStream;
    .registers 5

    .line 743
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    monitor-enter v0

    .line 744
    :try_start_3
    iget-object v1, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-static {v1}, Lcom/anythink/core/common/res/a$b;->b(Lcom/anythink/core/common/res/a$b;)Lcom/anythink/core/common/res/a$a;

    move-result-object v1

    if-ne v1, p0, :cond_23

    .line 747
    iget-object v1, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-static {v1}, Lcom/anythink/core/common/res/a$b;->e(Lcom/anythink/core/common/res/a$b;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 748
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 750
    :cond_16
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-virtual {v2, p1}, Lcom/anythink/core/common/res/a$b;->a(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v0

    return-object v1

    .line 745
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 751
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method static synthetic b(Lcom/anythink/core/common/res/a$a;)Z
    .registers 2

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/res/a$a;->c:Z

    return v0
.end method

.method private c(I)Ljava/lang/String;
    .registers 2

    .line 758
    invoke-direct {p0, p1}, Lcom/anythink/core/common/res/a$a;->b(I)Ljava/io/InputStream;

    move-result-object p1

    .line 759
    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/anythink/core/common/res/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(I)Ljava/io/OutputStream;
    .registers 6

    .line 769
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-object v1, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-static {v1}, Lcom/anythink/core/common/res/a$b;->b(Lcom/anythink/core/common/res/a$b;)Lcom/anythink/core/common/res/a$a;

    move-result-object v1

    if-ne v1, p0, :cond_1e

    .line 773
    new-instance v1, Lcom/anythink/core/common/res/a$a$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-virtual {v3, p1}, Lcom/anythink/core/common/res/a$b;->b(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/anythink/core/common/res/a$a$a;-><init>(Lcom/anythink/core/common/res/a$a;Ljava/io/OutputStream;B)V

    monitor-exit v0

    return-object v1

    .line 771
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 774
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public final a()V
    .registers 3

    .line 795
    iget-boolean v0, p0, Lcom/anythink/core/common/res/a$a;->c:Z

    if-eqz v0, :cond_16

    .line 796
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/res/a;->a(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$a;Z)V

    .line 797
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    iget-object v1, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-static {v1}, Lcom/anythink/core/common/res/a$b;->d(Lcom/anythink/core/common/res/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/res/a;->c(Ljava/lang/String;)Z

    return-void

    .line 799
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/res/a;->a(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$a;Z)V

    .line 801
    return-void
.end method

.method public final b()V
    .registers 3

    .line 808
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/res/a;->a(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$a;Z)V

    .line 809
    return-void
.end method
