.class public Lcom/umeng/analytics/pro/ap;
.super Lcom/umeng/analytics/pro/aw;
.source "TApplicationException.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static final j:Lcom/umeng/analytics/pro/bu;

.field private static final k:Lcom/umeng/analytics/pro/bk;

.field private static final l:Lcom/umeng/analytics/pro/bk;

.field private static final m:J = 0x1L


# instance fields
.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 34
    new-instance v0, Lcom/umeng/analytics/pro/bu;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/pro/ap;->j:Lcom/umeng/analytics/pro/bu;

    .line 35
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/ap;->k:Lcom/umeng/analytics/pro/bk;

    .line 36
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/ap;->l:Lcom/umeng/analytics/pro/bk;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aw;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/pro/ap;->i:I

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 56
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aw;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/pro/ap;->i:I

    .line 57
    iput p1, p0, Lcom/umeng/analytics/pro/ap;->i:I

    .line 58
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 61
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/analytics/pro/ap;->i:I

    .line 62
    iput p1, p0, Lcom/umeng/analytics/pro/ap;->i:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 p1, 0x0

    iput p1, p0, Lcom/umeng/analytics/pro/ap;->i:I

    .line 67
    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bp;)Lcom/umeng/analytics/pro/ap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 77
    nop

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    :goto_6
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v2

    .line 82
    iget-byte v3, v2, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v3, :cond_18

    .line 83
    nop

    .line 106
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 108
    new-instance p0, Lcom/umeng/analytics/pro/ap;

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/ap;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 85
    :cond_18
    iget-short v3, v2, Lcom/umeng/analytics/pro/bk;->c:S

    packed-switch v3, :pswitch_data_4a

    .line 101
    iget-byte v2, v2, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p0, v2}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_45

    .line 94
    :pswitch_23
    iget-byte v3, v2, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2e

    .line 95
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v1

    goto :goto_45

    .line 97
    :cond_2e
    iget-byte v2, v2, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p0, v2}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 99
    goto :goto_45

    .line 87
    :pswitch_34
    iget-byte v3, v2, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3f

    .line 88
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 90
    :cond_3f
    iget-byte v2, v2, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p0, v2}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 92
    nop

    .line 104
    :goto_45
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->m()V

    goto :goto_6

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/umeng/analytics/pro/ap;->i:I

    return v0
.end method

.method public b(Lcom/umeng/analytics/pro/bp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/umeng/analytics/pro/ap;->j:Lcom/umeng/analytics/pro/bu;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 113
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ap;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 114
    sget-object v0, Lcom/umeng/analytics/pro/ap;->k:Lcom/umeng/analytics/pro/bk;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 115
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ap;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 118
    :cond_1a
    sget-object v0, Lcom/umeng/analytics/pro/ap;->l:Lcom/umeng/analytics/pro/bk;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 119
    iget v0, p0, Lcom/umeng/analytics/pro/ap;->i:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(I)V

    .line 120
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 121
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 122
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    .line 123
    return-void
.end method
