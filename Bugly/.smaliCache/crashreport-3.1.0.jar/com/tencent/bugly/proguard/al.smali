.class public final Lcom/tencent/bugly/proguard/al;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/al;->a:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/al;->b:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .registers 6

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/al;->a:Ljava/lang/String;

    .line 41
    sget-object v2, Lcom/tencent/bugly/proguard/al;->c:Ljava/util/ArrayList;

    if-nez v2, :cond_19

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/bugly/proguard/al;->c:Ljava/util/ArrayList;

    .line 44
    nop

    .line 45
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_19
    sget-object v2, Lcom/tencent/bugly/proguard/al;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v1, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/al;->b:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/tencent/bugly/proguard/al;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/tencent/bugly/proguard/al;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 32
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    .line 34
    :cond_e
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .registers 3

    .line 52
    return-void
.end method
