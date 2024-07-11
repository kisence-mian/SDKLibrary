.class public Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;
.super Ljava/lang/Object;
.source "SensitiveUserDataUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCreditCard(Landroid/widget/TextView;)Z
    .registers 11
    .param p0, "view"    # Landroid/widget/TextView;

    .line 79
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "ccNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 81
    .local v1, "length":I
    const/4 v2, 0x0

    const/16 v3, 0xc

    if-lt v1, v3, :cond_4c

    const/16 v3, 0x13

    if-le v1, v3, :cond_1a

    goto :goto_4c

    .line 84
    :cond_1a
    const/4 v3, 0x0

    .line 85
    .local v3, "sum":I
    const/4 v4, 0x0

    .line 86
    .local v4, "alternate":Z
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1e
    const/4 v6, 0x1

    if-ltz v5, :cond_46

    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 89
    .local v7, "digit":C
    const/16 v8, 0x30

    if-lt v7, v8, :cond_45

    const/16 v8, 0x39

    if-le v7, v8, :cond_2e

    goto :goto_45

    .line 92
    :cond_2e
    add-int/lit8 v8, v7, -0x30

    .line 93
    .local v8, "n":I
    if-eqz v4, :cond_3c

    .line 95
    mul-int/lit8 v8, v8, 0x2

    .line 96
    const/16 v9, 0x9

    if-le v8, v9, :cond_3c

    .line 98
    rem-int/lit8 v9, v8, 0xa

    add-int/lit8 v8, v9, 0x1

    .line 101
    :cond_3c
    add-int/2addr v3, v8

    .line 102
    if-nez v4, :cond_40

    goto :goto_41

    :cond_40
    const/4 v6, 0x0

    :goto_41
    move v4, v6

    .line 86
    .end local v7    # "digit":C
    .end local v8    # "n":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    .line 90
    .restart local v7    # "digit":C
    :cond_45
    :goto_45
    return v2

    .line 104
    .end local v5    # "i":I
    .end local v7    # "digit":C
    :cond_46
    rem-int/lit8 v5, v3, 0xa

    if-nez v5, :cond_4b

    const/4 v2, 0x1

    :cond_4b
    return v2

    .line 82
    .end local v3    # "sum":I
    .end local v4    # "alternate":Z
    :cond_4c
    :goto_4c
    return v2
.end method

.method private static isEmail(Landroid/widget/TextView;)Z
    .registers 4
    .param p0, "view"    # Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 53
    .local v0, "inputType":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    .line 54
    const/4 v1, 0x1

    return v1

    .line 56
    :cond_a
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    goto :goto_22

    .line 60
    :cond_17
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2

    .line 58
    :cond_22
    :goto_22
    const/4 v2, 0x0

    return v2
.end method

.method private static isPassword(Landroid/widget/TextView;)Z
    .registers 4
    .param p0, "view"    # Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 44
    .local v0, "inputType":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    .line 45
    const/4 v1, 0x1

    return v1

    .line 47
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 48
    .local v1, "method":Landroid/text/method/TransformationMethod;
    instance-of v2, v1, Landroid/text/method/PasswordTransformationMethod;

    return v2
.end method

.method private static isPersonName(Landroid/widget/TextView;)Z
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 65
    .local v0, "inputType":I
    const/16 v1, 0x60

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private static isPhoneNumber(Landroid/widget/TextView;)Z
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 75
    .local v0, "inputType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private static isPostalAddress(Landroid/widget/TextView;)Z
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 70
    .local v0, "inputType":I
    const/16 v1, 0x70

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public static isSensitiveUserData(Landroid/view/View;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 33
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPassword(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isCreditCard(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPersonName(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 36
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPostalAddress(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPhoneNumber(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 37
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isEmail(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    .line 35
    :cond_2d
    return v1

    .line 39
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_2e
    return v1
.end method
