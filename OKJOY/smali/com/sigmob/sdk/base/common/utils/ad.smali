.class public Lcom/sigmob/sdk/base/common/utils/ad;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sigmob/sdk/base/common/utils/ab;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/sigmob/sdk/base/common/utils/ae;

.field private c:Lcom/sigmob/sdk/base/common/utils/af;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->f:Lcom/sigmob/sdk/base/common/utils/ab;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ad;->a:Ljava/util/EnumSet;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ac;->c()Lcom/sigmob/sdk/base/common/utils/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ad;->b:Lcom/sigmob/sdk/base/common/utils/ae;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ac;->d()Lcom/sigmob/sdk/base/common/utils/af;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ad;->c:Lcom/sigmob/sdk/base/common/utils/af;

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/ad;->d:Z

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/ad;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/common/utils/ad;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/ad;->d:Z

    return-object p0
.end method

.method public varargs a(Lcom/sigmob/sdk/base/common/utils/ab;[Lcom/sigmob/sdk/base/common/utils/ab;)Lcom/sigmob/sdk/base/common/utils/ad;
    .registers 4

    invoke-static {p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ad;->a:Ljava/util/EnumSet;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/base/common/utils/ae;)Lcom/sigmob/sdk/base/common/utils/ad;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ad;->b:Lcom/sigmob/sdk/base/common/utils/ae;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/base/common/utils/af;)Lcom/sigmob/sdk/base/common/utils/ad;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ad;->c:Lcom/sigmob/sdk/base/common/utils/af;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/utils/ad;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ad;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/sigmob/sdk/base/common/utils/ad;
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/utils/ad;->e:Z

    return-object p0
.end method

.method public b()Lcom/sigmob/sdk/base/common/utils/ac;
    .registers 9

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ac;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ad;->a:Ljava/util/EnumSet;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ad;->b:Lcom/sigmob/sdk/base/common/utils/ae;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/utils/ad;->c:Lcom/sigmob/sdk/base/common/utils/af;

    iget-boolean v4, p0, Lcom/sigmob/sdk/base/common/utils/ad;->d:Z

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/utils/ad;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/sigmob/sdk/base/common/utils/ad;->e:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/utils/ac;-><init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/utils/ae;Lcom/sigmob/sdk/base/common/utils/af;ZLjava/lang/String;ZLcom/sigmob/sdk/base/common/utils/ac$1;)V

    return-object v0
.end method
