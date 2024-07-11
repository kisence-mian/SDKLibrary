.class public Lcom/qq/e/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xml"
.end annotation


# static fields
.field public static gdt_file_path:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const v0, 0x7f190001

    sput v0, Lcom/qq/e/R$xml;->gdt_file_path:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
