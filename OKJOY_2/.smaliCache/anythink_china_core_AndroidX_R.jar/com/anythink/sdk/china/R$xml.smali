.class public Lcom/anythink/sdk/china/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/sdk/china/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xml"
.end annotation


# static fields
.field public static anythink_file_paths:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const v0, 0x7f180001

    sput v0, Lcom/anythink/sdk/china/R$xml;->anythink_file_paths:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
