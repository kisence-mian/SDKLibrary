.class public Lokjoy/r/d;
.super Lokjoy/r/a;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lokjoy/r/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()[I
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
