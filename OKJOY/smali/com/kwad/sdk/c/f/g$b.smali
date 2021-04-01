.class public Lcom/kwad/sdk/c/f/g$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static synthetic a()I
    .registers 1

    sget v0, Lcom/kwad/sdk/c/f/g$b;->a:I

    return v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/kwad/sdk/c/f/g$b;->b:I

    return-void
.end method

.method static synthetic b()I
    .registers 1

    sget v0, Lcom/kwad/sdk/c/f/g$b;->b:I

    return v0
.end method

.method public static b(I)V
    .registers 1

    sput p0, Lcom/kwad/sdk/c/f/g$b;->a:I

    return-void
.end method
