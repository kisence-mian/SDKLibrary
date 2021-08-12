.class public Lcom/anythink/sdk/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
.field public static anythink_basead_click_empty:I

.field public static anythink_basead_click_fail:I

.field public static anythink_myoffer_splash_skip_text:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    const v0, 0x7f140001

    sput v0, Lcom/anythink/sdk/R$string;->anythink_basead_click_empty:I

    .line 100
    const v0, 0x7f140002

    sput v0, Lcom/anythink/sdk/R$string;->anythink_basead_click_fail:I

    .line 101
    const v0, 0x7f140003

    sput v0, Lcom/anythink/sdk/R$string;->anythink_myoffer_splash_skip_text:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
