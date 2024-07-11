.class public Lcom/bytedance/tea/crash/a/d;
.super Ljava/lang/Object;
.source "ANRThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private final b:Lcom/bytedance/tea/crash/a/c;

.field private volatile c:Z

.field private d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/bytedance/tea/crash/a/c;)V
    .registers 12

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/d;->c:Z

    .line 21
    new-instance v0, Lcom/bytedance/tea/crash/a/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/a/d$1;-><init>(Lcom/bytedance/tea/crash/a/d;)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/a/d;->d:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcom/bytedance/tea/crash/a/d;->b:Lcom/bytedance/tea/crash/a/c;

    .line 30
    invoke-direct {p0}, Lcom/bytedance/tea/crash/a/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/tea/crash/a/d;->a:J

    .line 31
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/g;->a(J)V

    .line 32
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/tea/crash/a/d;->d:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1194

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/tea/crash/e/f;->a(JLjava/lang/Runnable;)V

    .line 33
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object v3

    const-wide/16 v4, 0x1388

    const/16 v7, 0x28

    const-wide/16 v8, 0x1388

    move-object v6, p0

    invoke-virtual/range {v3 .. v9}, Lcom/bytedance/tea/crash/e/f;->a(JLjava/lang/Runnable;IJ)V

    .line 34
    return-void
.end method

.method private a()J
    .registers 3

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/traces.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 59
    :cond_12
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/a/d;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/tea/crash/a/d;->c:Z

    return p1
.end method

.method private b()Z
    .registers 3

    .line 64
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/traces.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 38
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/a/d;->c:Z

    if-nez v0, :cond_22

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/bytedance/tea/crash/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 42
    const/16 v0, 0xc8

    .line 43
    const-string v1, "/data/anr/traces.txt"

    goto :goto_15

    .line 45
    :cond_10
    const/16 v1, 0x64

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 48
    :goto_15
    iget-object v2, p0, Lcom/bytedance/tea/crash/a/d;->b:Lcom/bytedance/tea/crash/a/c;

    const/16 v3, 0x19

    invoke-virtual {v2, v0, v1, v3}, Lcom/bytedance/tea/crash/a/c;->a(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/d;->c:Z

    .line 52
    :cond_22
    return-void
.end method
