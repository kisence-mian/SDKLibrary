.class public Lcom/kwai/sodler/lib/ext/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/sodler/lib/ext/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:[B

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->a:I

    const-string v0, "sodler"

    iput-object v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->c:Ljava/lang/String;

    const-string v0, "code-cache"

    iput-object v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->d:Ljava/lang/String;

    const-string v0, "lib"

    iput-object v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->e:Ljava/lang/String;

    const-string v0, "temp"

    iput-object v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->f:Ljava/lang/String;

    const-string v0, "base-1.apk"

    iput-object v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->g:Ljava/lang/String;

    const-string v0, ".tmp"

    iput-object v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->i:Z

    iput-boolean v0, p0, Lcom/kwai/sodler/lib/ext/c$a;->j:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/kwai/sodler/lib/ext/c$a;
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/kwai/sodler/lib/ext/c$a;->a:I

    :cond_4
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/sodler/lib/ext/c$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/ext/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/kwai/sodler/lib/ext/c$a;
    .registers 2

    iput-boolean p1, p0, Lcom/kwai/sodler/lib/ext/c$a;->m:Z

    return-object p0
.end method

.method public a()Lcom/kwai/sodler/lib/ext/c;
    .registers 18

    move-object/from16 v0, p0

    new-instance v16, Lcom/kwai/sodler/lib/ext/c;

    iget-boolean v2, v0, Lcom/kwai/sodler/lib/ext/c$a;->j:Z

    iget-boolean v3, v0, Lcom/kwai/sodler/lib/ext/c$a;->i:Z

    iget-object v4, v0, Lcom/kwai/sodler/lib/ext/c$a;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/kwai/sodler/lib/ext/c$a;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/kwai/sodler/lib/ext/c$a;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/kwai/sodler/lib/ext/c$a;->e:Ljava/lang/String;

    iget-object v8, v0, Lcom/kwai/sodler/lib/ext/c$a;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/kwai/sodler/lib/ext/c$a;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/kwai/sodler/lib/ext/c$a;->g:Ljava/lang/String;

    iget v11, v0, Lcom/kwai/sodler/lib/ext/c$a;->a:I

    iget-object v12, v0, Lcom/kwai/sodler/lib/ext/c$a;->k:Ljava/lang/String;

    iget-object v13, v0, Lcom/kwai/sodler/lib/ext/c$a;->l:[B

    iget-boolean v14, v0, Lcom/kwai/sodler/lib/ext/c$a;->m:Z

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/kwai/sodler/lib/ext/c;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BZLcom/kwai/sodler/lib/ext/c$1;)V

    return-object v16
.end method
