.class public Lcom/kwad/sdk/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xml"
.end annotation


# static fields
.field public static ksad_file_paths:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1970
    const v0, 0x7f180001

    sput v0, Lcom/kwad/sdk/R$xml;->ksad_file_paths:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
