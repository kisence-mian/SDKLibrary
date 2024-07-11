.class public Lcom/sigmob/sdk/common/f/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/f/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sigmob/sdk/common/f/p;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/sigmob/sdk/common/f/q$b;

.field private c:Lcom/sigmob/sdk/common/f/q$c;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/f/p;->f:Lcom/sigmob/sdk/common/f/p;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/f/q$a;->a:Ljava/util/EnumSet;

    invoke-static {}, Lcom/sigmob/sdk/common/f/q;->c()Lcom/sigmob/sdk/common/f/q$b;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/f/q$a;->b:Lcom/sigmob/sdk/common/f/q$b;

    invoke-static {}, Lcom/sigmob/sdk/common/f/q;->d()Lcom/sigmob/sdk/common/f/q$c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/f/q$a;->c:Lcom/sigmob/sdk/common/f/q$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/f/q$a;->d:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/f/q$a;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/common/f/q$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/f/q$a;->d:Z

    return-object p0
.end method

.method public varargs a(Lcom/sigmob/sdk/common/f/p;[Lcom/sigmob/sdk/common/f/p;)Lcom/sigmob/sdk/common/f/q$a;
    .registers 3

    invoke-static {p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/q$a;->a:Ljava/util/EnumSet;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/common/f/q$b;)Lcom/sigmob/sdk/common/f/q$a;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/q$a;->b:Lcom/sigmob/sdk/common/f/q$b;

    return-object p0
.end method

.method public a(Z)Lcom/sigmob/sdk/common/f/q$a;
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/common/f/q$a;->e:Z

    return-object p0
.end method

.method public b()Lcom/sigmob/sdk/common/f/q;
    .registers 10

    new-instance v8, Lcom/sigmob/sdk/common/f/q;

    iget-object v1, p0, Lcom/sigmob/sdk/common/f/q$a;->a:Ljava/util/EnumSet;

    iget-object v2, p0, Lcom/sigmob/sdk/common/f/q$a;->b:Lcom/sigmob/sdk/common/f/q$b;

    iget-object v3, p0, Lcom/sigmob/sdk/common/f/q$a;->c:Lcom/sigmob/sdk/common/f/q$c;

    iget-boolean v4, p0, Lcom/sigmob/sdk/common/f/q$a;->d:Z

    iget-object v5, p0, Lcom/sigmob/sdk/common/f/q$a;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/sigmob/sdk/common/f/q$a;->e:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/common/f/q;-><init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/common/f/q$b;Lcom/sigmob/sdk/common/f/q$c;ZLjava/lang/String;ZLcom/sigmob/sdk/common/f/q$1;)V

    return-object v8
.end method
