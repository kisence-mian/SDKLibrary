.class public final Lcom/kwai/sodler/lib/ext/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/sodler/lib/ext/c$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Z

.field private k:Ljava/lang/String;

.field private l:[B

.field private m:Z


# direct methods
.method private constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BZ)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p10, p0, Lcom/kwai/sodler/lib/ext/c;->a:I

    iput-object p4, p0, Lcom/kwai/sodler/lib/ext/c;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/kwai/sodler/lib/ext/c;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/kwai/sodler/lib/ext/c;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/kwai/sodler/lib/ext/c;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/kwai/sodler/lib/ext/c;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/kwai/sodler/lib/ext/c;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwai/sodler/lib/ext/c;->h:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/kwai/sodler/lib/ext/c;->i:Z

    iput-boolean p2, p0, Lcom/kwai/sodler/lib/ext/c;->j:Z

    iput-object p11, p0, Lcom/kwai/sodler/lib/ext/c;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/kwai/sodler/lib/ext/c;->l:[B

    iput-boolean p13, p0, Lcom/kwai/sodler/lib/ext/c;->m:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BZLcom/kwai/sodler/lib/ext/c$1;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Lcom/kwai/sodler/lib/ext/c;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BZ)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/kwai/sodler/lib/ext/c;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/ext/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/ext/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/ext/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/ext/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/ext/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/ext/c;->j:Z

    return v0
.end method
