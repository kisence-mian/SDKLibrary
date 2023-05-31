.class public Lcom/ksad/lottie/p/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:C

.field private final c:D

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/j;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/p/d;->a:Ljava/util/List;

    iput-char p2, p0, Lcom/ksad/lottie/p/d;->b:C

    iput-wide p5, p0, Lcom/ksad/lottie/p/d;->c:D

    iput-object p7, p0, Lcom/ksad/lottie/p/d;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/ksad/lottie/p/d;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(CLjava/lang/String;Ljava/lang/String;)I
    .registers 5

    add-int/lit8 v0, p0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/p/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()D
    .registers 3

    iget-wide v0, p0, Lcom/ksad/lottie/p/d;->c:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-char v0, p0, Lcom/ksad/lottie/p/d;->b:C

    iget-object v1, p0, Lcom/ksad/lottie/p/d;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksad/lottie/p/d;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ksad/lottie/p/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
