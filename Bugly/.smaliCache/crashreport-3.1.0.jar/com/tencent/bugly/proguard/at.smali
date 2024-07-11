.class public final Lcom/tencent/bugly/proguard/at;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"


# static fields
.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:B

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/at;->i:Ljava/util/Map;

    .line 73
    nop

    .line 74
    nop

    .line 75
    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/at;->a:J

    .line 13
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/at;->b:B

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->c:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->d:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->e:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/at;->f:Ljava/util/Map;

    .line 23
    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->g:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/at;->h:Z

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .registers 6

    .line 80
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/at;->a:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/at;->a:J

    .line 81
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/at;->b:B

    invoke-virtual {p1, v0, v3, v3}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/at;->b:B

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->c:Ljava/lang/String;

    .line 83
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->d:Ljava/lang/String;

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->e:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/tencent/bugly/proguard/at;->i:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->f:Ljava/util/Map;

    .line 86
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->g:Ljava/lang/String;

    .line 87
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/at;->h:Z

    .line 88
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .registers 5

    .line 45
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/at;->a:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    .line 46
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/at;->b:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    .line 47
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 49
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 51
    :cond_14
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->d:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 53
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 55
    :cond_1c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->e:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 57
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 59
    :cond_24
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->f:Ljava/util/Map;

    if-eqz v0, :cond_2c

    .line 61
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 63
    :cond_2c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->g:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 65
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 67
    :cond_34
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/at;->h:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(ZI)V

    .line 68
    return-void
.end method
