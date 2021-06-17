.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;,
        Landroidx/fragment/app/FragmentTransition$Callback;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 80
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    nop

    :array_20
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 704
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 705
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 706
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 707
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v1    # "view":Landroid/view/View;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 710
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private static addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V
    .registers 21
    .param p0, "transaction"    # Landroidx/fragment/app/BackStackRecord;
    .param p1, "op"    # Landroidx/fragment/app/FragmentTransaction$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroidx/fragment/app/FragmentTransaction$Op;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1183
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1184
    .local v4, "fragment":Landroidx/fragment/app/Fragment;
    if-nez v4, :cond_d

    .line 1185
    return-void

    .line 1187
    :cond_d
    iget v5, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1188
    .local v5, "containerId":I
    if-nez v5, :cond_12

    .line 1189
    return-void

    .line 1191
    :cond_12
    if-eqz v3, :cond_1b

    sget-object v6, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget v7, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aget v6, v6, v7

    goto :goto_1d

    :cond_1b
    iget v6, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 1192
    .local v6, "command":I
    :goto_1d
    const/4 v7, 0x0

    .line 1193
    .local v7, "setLastIn":Z
    const/4 v8, 0x0

    .line 1194
    .local v8, "wasRemoved":Z
    const/4 v9, 0x0

    .line 1195
    .local v9, "setFirstOut":Z
    const/4 v10, 0x0

    .line 1196
    .local v10, "wasAdded":Z
    const/4 v11, 0x0

    const/4 v12, 0x1

    packed-switch v6, :pswitch_data_ea

    :pswitch_26
    goto/16 :goto_96

    .line 1198
    :pswitch_28
    if-eqz p4, :cond_39

    .line 1199
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_37

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_37

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_37

    const/4 v11, 0x1

    :cond_37
    move v7, v11

    goto :goto_3b

    .line 1201
    :cond_39
    iget-boolean v7, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1203
    :goto_3b
    const/4 v10, 0x1

    .line 1204
    goto/16 :goto_96

    .line 1215
    :pswitch_3e
    if-eqz p4, :cond_4f

    .line 1216
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_4d

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_4d

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v13, :cond_4d

    const/4 v11, 0x1

    :cond_4d
    move v9, v11

    goto :goto_59

    .line 1218
    :cond_4f
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_58

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_58

    const/4 v11, 0x1

    :cond_58
    move v9, v11

    .line 1220
    :goto_59
    const/4 v8, 0x1

    .line 1221
    goto :goto_96

    .line 1224
    :pswitch_5b
    if-eqz p4, :cond_79

    .line 1225
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_76

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v13, :cond_76

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1226
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_76

    iget v13, v4, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_76

    const/4 v11, 0x1

    goto :goto_77

    :cond_76
    nop

    :goto_77
    move v9, v11

    goto :goto_83

    .line 1229
    :cond_79
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_82

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_82

    const/4 v11, 0x1

    :cond_82
    move v9, v11

    .line 1231
    :goto_83
    const/4 v8, 0x1

    goto :goto_96

    .line 1207
    :pswitch_85
    if-eqz p4, :cond_8a

    .line 1208
    iget-boolean v7, v4, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_94

    .line 1210
    :cond_8a
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_93

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_93

    const/4 v11, 0x1

    :cond_93
    move v7, v11

    .line 1212
    :goto_94
    const/4 v10, 0x1

    .line 1213
    nop

    .line 1234
    :goto_96
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 1235
    .local v11, "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v7, :cond_a9

    .line 1236
    nop

    .line 1237
    invoke-static {v11, v2, v5}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v11

    .line 1238
    iput-object v4, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1239
    iput-boolean v3, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1240
    iput-object v0, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1242
    :cond_a9
    const/4 v13, 0x0

    if-nez p4, :cond_ca

    if-eqz v10, :cond_ca

    .line 1243
    if-eqz v11, :cond_b6

    iget-object v14, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-ne v14, v4, :cond_b6

    .line 1244
    iput-object v13, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1251
    :cond_b6
    iget-object v14, v0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 1252
    .local v14, "manager":Landroidx/fragment/app/FragmentManager;
    iget v15, v4, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v15, v12, :cond_ca

    iget v15, v14, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v15, v12, :cond_ca

    iget-boolean v15, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v15, :cond_ca

    .line 1254
    invoke-virtual {v14, v4}, Landroidx/fragment/app/FragmentManager;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1255
    invoke-virtual {v14, v4, v12}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 1258
    .end local v14    # "manager":Landroidx/fragment/app/FragmentManager;
    :cond_ca
    if-eqz v9, :cond_dd

    if-eqz v11, :cond_d2

    iget-object v12, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-nez v12, :cond_dd

    .line 1259
    :cond_d2
    nop

    .line 1260
    invoke-static {v11, v2, v5}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v11

    .line 1261
    iput-object v4, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1262
    iput-boolean v3, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1263
    iput-object v0, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1266
    :cond_dd
    if-nez p4, :cond_e9

    if-eqz v8, :cond_e9

    if-eqz v11, :cond_e9

    iget-object v12, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    if-ne v12, v4, :cond_e9

    .line 1268
    iput-object v13, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1270
    :cond_e9
    return-void

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_85
        :pswitch_26
        :pswitch_5b
        :pswitch_3e
        :pswitch_28
        :pswitch_5b
        :pswitch_85
    .end packed-switch
.end method

.method public static calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .param p0, "transaction"    # Landroidx/fragment/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1135
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1136
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 1137
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1138
    .local v2, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    .line 1136
    .end local v2    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1140
    .end local v1    # "opNum":I
    :cond_18
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;
    .registers 16
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 181
    .local v0, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, p4, -0x1

    .local v1, "recordNum":I
    :goto_7
    if-lt v1, p3, :cond_59

    .line 182
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 183
    .local v2, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 184
    goto :goto_56

    .line 186
    :cond_16
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 187
    .local v3, "isPop":Z
    iget-object v4, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_56

    .line 188
    iget-object v4, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 191
    .local v4, "numSharedElements":I
    if-eqz v3, :cond_31

    .line 192
    iget-object v5, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 193
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v6, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_35

    .line 195
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_31
    iget-object v6, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 196
    .restart local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 198
    .restart local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_35
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_36
    if-ge v7, v4, :cond_56

    .line 199
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 200
    .local v8, "sourceName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 201
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 202
    .local v10, "previousTarget":Ljava/lang/String;
    if-eqz v10, :cond_50

    .line 203
    invoke-virtual {v0, v8, v10}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 205
    :cond_50
    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v8    # "sourceName":Ljava/lang/String;
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "previousTarget":Ljava/lang/String;
    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 181
    .end local v2    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "numSharedElements":I
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_56
    :goto_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 210
    .end local v1    # "recordNum":I
    :cond_59
    return-object v0
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .param p0, "transaction"    # Landroidx/fragment/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1152
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1153
    return-void

    .line 1155
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1156
    .local v0, "numOps":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "opNum":I
    :goto_13
    if-ltz v1, :cond_24

    .line 1157
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1158
    .local v2, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    const/4 v3, 0x1

    invoke-static {p0, v2, p1, v3, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    .line 1156
    .end local v2    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 1160
    .end local v1    # "opNum":I
    :cond_24
    return-void
.end method

.method static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .registers 11
    .param p0, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "outFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 1038
    .local p3, "sharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_7

    .line 1039
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    goto :goto_b

    .line 1040
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    :goto_b
    nop

    .line 1041
    .local v0, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    if-eqz v0, :cond_3e

    .line 1042
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1c

    const/4 v3, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    .line 1045
    .local v3, "count":I
    :goto_20
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    if-ge v4, v3, :cond_34

    .line 1046
    invoke-virtual {p3, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    invoke-virtual {p3, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1049
    .end local v4    # "i":I
    :cond_34
    const/4 v4, 0x0

    if-eqz p4, :cond_3b

    .line 1050
    invoke-virtual {v0, v2, v1, v4}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3e

    .line 1052
    :cond_3b
    invoke-virtual {v0, v2, v1, v4}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1055
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "count":I
    :cond_3e
    :goto_3e
    return-void
.end method

.method private static canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .registers 5
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 527
    .local p1, "transitions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 528
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 529
    const/4 v2, 0x0

    return v2

    .line 527
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 532
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method static captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .registers 15
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 898
    .local p1, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 899
    .local v0, "inFragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 900
    .local v1, "fragmentView":Landroid/view/View;
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    if-eqz p2, :cond_7f

    if-nez v1, :cond_12

    goto/16 :goto_7f

    .line 904
    :cond_12
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 905
    .local v2, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 909
    iget-object v3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 910
    .local v3, "inTransaction":Landroidx/fragment/app/BackStackRecord;
    iget-boolean v4, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v4, :cond_27

    .line 911
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v4

    .line 912
    .local v4, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    iget-object v5, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2d

    .line 914
    .end local v4    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v4

    .line 915
    .restart local v4    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    iget-object v5, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 918
    .restart local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2d
    if-eqz v5, :cond_39

    .line 919
    invoke-virtual {v2, v5}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 920
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 922
    :cond_39
    if-eqz v4, :cond_7b

    .line 923
    invoke-virtual {v4, v5, v2}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 924
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_44
    if-ltz v6, :cond_7a

    .line 925
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 926
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 927
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_5e

    .line 928
    invoke-static {p1, v7}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 929
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_76

    .line 930
    invoke-virtual {p1, v9}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 932
    .end local v9    # "key":Ljava/lang/String;
    :cond_5e
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_76

    .line 933
    invoke-static {p1, v7}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 934
    .restart local v9    # "key":Ljava/lang/String;
    if-eqz v9, :cond_77

    .line 935
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 932
    .end local v9    # "key":Ljava/lang/String;
    :cond_76
    :goto_76
    nop

    .line 924
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_77
    :goto_77
    add-int/lit8 v6, v6, -0x1

    goto :goto_44

    .end local v6    # "i":I
    :cond_7a
    goto :goto_7e

    .line 940
    :cond_7b
    invoke-static {p1, v2}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 942
    :goto_7e
    return-object v2

    .line 901
    .end local v2    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v3    # "inTransaction":Landroidx/fragment/app/BackStackRecord;
    .end local v4    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7f
    :goto_7f
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    .line 902
    const/4 v2, 0x0

    return-object v2
.end method

.method private static captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .registers 14
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 840
    .local p1, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    if-nez p2, :cond_9

    goto :goto_71

    .line 844
    :cond_9
    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 845
    .local v0, "outFragment":Landroidx/fragment/app/Fragment;
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 846
    .local v1, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 850
    iget-object v2, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 851
    .local v2, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    iget-boolean v3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v3, :cond_24

    .line 852
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v3

    .line 853
    .local v3, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    iget-object v4, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2a

    .line 855
    .end local v3    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v3

    .line 856
    .restart local v3    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    iget-object v4, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 859
    .restart local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2a
    if-eqz v4, :cond_2f

    .line 860
    invoke-virtual {v1, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 862
    :cond_2f
    if-eqz v3, :cond_69

    .line 863
    invoke-virtual {v3, v4, v1}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 864
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_3a
    if-ltz v5, :cond_68

    .line 865
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 866
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 867
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_4e

    .line 868
    invoke-virtual {p1, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 869
    :cond_4e
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 870
    invoke-virtual {p1, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 871
    .local v8, "targetValue":Ljava/lang/String;
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "targetValue":Ljava/lang/String;
    :cond_65
    :goto_65
    add-int/lit8 v5, v5, -0x1

    goto :goto_3a

    .end local v5    # "i":I
    :cond_68
    goto :goto_70

    .line 875
    :cond_69
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 877
    :goto_70
    return-object v1

    .line 841
    .end local v0    # "outFragment":Landroidx/fragment/app/Fragment;
    .end local v1    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v2    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    .end local v3    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_71
    :goto_71
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method private static chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 7
    .param p0, "outFragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "inFragment"    # Landroidx/fragment/app/Fragment;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v0, "transitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_22

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    .line 484
    .local v1, "exitTransition":Ljava/lang/Object;
    if-eqz v1, :cond_10

    .line 485
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    .line 488
    .local v2, "returnTransition":Ljava/lang/Object;
    if-eqz v2, :cond_19

    .line 489
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    .line 492
    .local v3, "sharedReturnTransition":Ljava/lang/Object;
    if-eqz v3, :cond_22

    .line 493
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .end local v2    # "returnTransition":Ljava/lang/Object;
    .end local v3    # "sharedReturnTransition":Ljava/lang/Object;
    :cond_22
    if-eqz p1, :cond_3f

    .line 497
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    .line 498
    .local v1, "enterTransition":Ljava/lang/Object;
    if-eqz v1, :cond_2d

    .line 499
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_2d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 502
    .local v2, "reenterTransition":Ljava/lang/Object;
    if-eqz v2, :cond_36

    .line 503
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_36
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    .line 506
    .local v3, "sharedEnterTransition":Ljava/lang/Object;
    if-eqz v3, :cond_3f

    .line 507
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v2    # "reenterTransition":Ljava/lang/Object;
    .end local v3    # "sharedEnterTransition":Ljava/lang/Object;
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 511
    return-object v2

    .line 514
    :cond_47
    sget-object v1, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_52

    invoke-static {v1, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 515
    return-object v1

    .line 517
    :cond_52
    sget-object v3, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v3, :cond_5d

    invoke-static {v3, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 518
    return-object v3

    .line 520
    :cond_5d
    if-nez v1, :cond_62

    if-nez v3, :cond_62

    .line 523
    return-object v2

    .line 521
    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Transition types"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "transition"    # Ljava/lang/Object;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1061
    .local p3, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1062
    .local v0, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1064
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1065
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_12

    .line 1066
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1068
    :cond_12
    if-eqz p3, :cond_17

    .line 1069
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1071
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1072
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1076
    .end local v1    # "root":Landroid/view/View;
    :cond_23
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 31
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 747
    .local p3, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v12, p7

    iget-object v11, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 748
    .local v11, "inFragment":Landroidx/fragment/app/Fragment;
    iget-object v10, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 750
    .local v10, "outFragment":Landroidx/fragment/app/Fragment;
    const/4 v0, 0x0

    if-eqz v11, :cond_a4

    if-nez v10, :cond_19

    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto/16 :goto_aa

    .line 754
    :cond_19
    iget-boolean v9, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 755
    .local v9, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v1, v0

    goto :goto_27

    .line 756
    :cond_23
    invoke-static {v13, v11, v10, v9}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_27
    nop

    .line 758
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v8, p3

    invoke-static {v13, v8, v1, v14}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v7

    .line 761
    .local v7, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 762
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_3f

    .line 764
    :cond_37
    invoke-virtual {v7}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v6, v1

    .line 767
    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .local v6, "sharedElementTransition":Ljava/lang/Object;
    :goto_3f
    if-nez v12, :cond_46

    if-nez p8, :cond_46

    if-nez v6, :cond_46

    .line 769
    return-object v0

    .line 772
    :cond_46
    const/4 v0, 0x1

    invoke-static {v11, v10, v9, v7, v0}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 775
    if-eqz v6, :cond_77

    .line 776
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    .line 777
    .local v5, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    invoke-virtual {v13, v6, v4, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 779
    iget-boolean v3, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 780
    .local v3, "outIsPop":Z
    iget-object v2, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 781
    .local v2, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v16, v2

    .end local v2    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    .local v16, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v2, p8

    move/from16 v17, v3

    .end local v3    # "outIsPop":Z
    .local v17, "outIsPop":Z
    move-object v3, v7

    move/from16 v4, v17

    move-object/from16 v18, v7

    move-object v7, v5

    .end local v5    # "inEpicenter":Landroid/graphics/Rect;
    .local v7, "inEpicenter":Landroid/graphics/Rect;
    .local v18, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 783
    if-eqz v12, :cond_74

    .line 784
    invoke-virtual {v13, v12, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 786
    .end local v16    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    .end local v17    # "outIsPop":Z
    :cond_74
    move-object/from16 v16, v7

    goto :goto_7c

    .line 787
    .end local v18    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v7, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_77
    move-object/from16 v18, v7

    .end local v7    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v18    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v5, 0x0

    move-object/from16 v16, v5

    .line 791
    .local v16, "inEpicenter":Landroid/graphics/Rect;
    :goto_7c
    move-object v3, v6

    .line 792
    .local v3, "finalSharedElementTransition":Ljava/lang/Object;
    new-instance v7, Landroidx/fragment/app/FragmentTransition$6;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v17, v6

    .end local v6    # "sharedElementTransition":Ljava/lang/Object;
    .local v17, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v6, p2

    move-object v13, v7

    move-object v7, v11

    move-object v8, v10

    move/from16 v19, v9

    .end local v9    # "inIsPop":Z
    .local v19, "inIsPop":Z
    move-object/from16 v20, v10

    .end local v10    # "outFragment":Landroidx/fragment/app/Fragment;
    .local v20, "outFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v10, p5

    move-object/from16 v21, v11

    .end local v11    # "inFragment":Landroidx/fragment/app/Fragment;
    .local v21, "inFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v11, p7

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/FragmentTransition$6;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v13}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 820
    return-object v17

    .line 750
    .end local v3    # "finalSharedElementTransition":Ljava/lang/Object;
    .end local v16    # "inEpicenter":Landroid/graphics/Rect;
    .end local v17    # "sharedElementTransition":Ljava/lang/Object;
    .end local v18    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v19    # "inIsPop":Z
    .end local v20    # "outFragment":Landroidx/fragment/app/Fragment;
    .end local v21    # "inFragment":Landroidx/fragment/app/Fragment;
    .restart local v10    # "outFragment":Landroidx/fragment/app/Fragment;
    .restart local v11    # "inFragment":Landroidx/fragment/app/Fragment;
    :cond_a4
    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 751
    .end local v10    # "outFragment":Landroidx/fragment/app/Fragment;
    .end local v11    # "inFragment":Landroidx/fragment/app/Fragment;
    .restart local v20    # "outFragment":Landroidx/fragment/app/Fragment;
    .restart local v21    # "inFragment":Landroidx/fragment/app/Fragment;
    :goto_aa
    return-object v0
.end method

.method private static configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 31
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 618
    .local p3, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    iget-object v15, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 619
    .local v15, "inFragment":Landroidx/fragment/app/Fragment;
    iget-object v7, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 620
    .local v7, "outFragment":Landroidx/fragment/app/Fragment;
    if-eqz v15, :cond_1c

    .line 621
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_1c
    const/4 v0, 0x0

    if-eqz v15, :cond_c8

    if-nez v7, :cond_27

    move-object/from16 v1, p1

    move-object/from16 v21, v7

    goto/16 :goto_cc

    .line 627
    :cond_27
    iget-boolean v6, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 628
    .local v6, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    move-object v1, v0

    goto :goto_35

    .line 629
    :cond_31
    invoke-static {v8, v15, v7, v6}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_35
    nop

    .line 631
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    invoke-static {v8, v10, v1, v11}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v5

    .line 634
    .local v5, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v8, v10, v1, v11}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v4

    .line 637
    .local v4, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 638
    const/4 v1, 0x0

    .line 639
    if-eqz v5, :cond_4a

    .line 640
    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->clear()V

    .line 642
    :cond_4a
    if-eqz v4, :cond_4f

    .line 643
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->clear()V

    .line 652
    :cond_4f
    move-object v3, v1

    goto :goto_62

    .line 646
    :cond_51
    nop

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 646
    invoke-static {v12, v5, v2}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 648
    nop

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 648
    invoke-static {v13, v4, v2}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    move-object v3, v1

    .line 652
    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .local v3, "sharedElementTransition":Ljava/lang/Object;
    :goto_62
    if-nez v14, :cond_69

    if-nez p8, :cond_69

    if-nez v3, :cond_69

    .line 654
    return-object v0

    .line 657
    :cond_69
    const/4 v0, 0x1

    invoke-static {v15, v7, v6, v5, v0}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 661
    if-eqz v3, :cond_a2

    .line 662
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {v8, v3, v9, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 665
    iget-boolean v2, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 666
    .local v2, "outIsPop":Z
    iget-object v1, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 667
    .local v1, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v0, p0

    move-object/from16 v16, v1

    .end local v1    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    .local v16, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v3

    move/from16 v17, v2

    .end local v2    # "outIsPop":Z
    .local v17, "outIsPop":Z
    move-object/from16 v2, p8

    move-object/from16 v18, v3

    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .local v18, "sharedElementTransition":Ljava/lang/Object;
    move-object v3, v5

    move-object v9, v4

    .end local v4    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v9, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move/from16 v4, v17

    move-object/from16 v19, v5

    .end local v5    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v19, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 669
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 670
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-static {v9, v11, v14, v6}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    .line 672
    .local v1, "epicenterView":Landroid/view/View;
    if-eqz v1, :cond_9d

    .line 673
    invoke-virtual {v8, v14, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 675
    .end local v16    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    .end local v17    # "outIsPop":Z
    :cond_9d
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_ad

    .line 676
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    .end local v1    # "epicenterView":Landroid/view/View;
    .end local v9    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .end local v19    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v3    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v4    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v5    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_a2
    move-object/from16 v18, v3

    move-object v9, v4

    move-object/from16 v19, v5

    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .end local v4    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v5    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v9    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v18    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v19    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 677
    .restart local v0    # "epicenter":Landroid/graphics/Rect;
    const/4 v1, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 680
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    .local v16, "epicenter":Landroid/graphics/Rect;
    .local v17, "epicenterView":Landroid/view/View;
    :goto_ad
    new-instance v5, Landroidx/fragment/app/FragmentTransition$5;

    move-object v0, v5

    move-object v1, v15

    move-object v2, v7

    move v3, v6

    move-object v4, v9

    move-object v8, v5

    move-object/from16 v5, v17

    move/from16 v20, v6

    .end local v6    # "inIsPop":Z
    .local v20, "inIsPop":Z
    move-object/from16 v6, p0

    move-object/from16 v21, v7

    .end local v7    # "outFragment":Landroidx/fragment/app/Fragment;
    .local v21, "outFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransition$5;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v8}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 690
    return-object v18

    .line 623
    .end local v9    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v16    # "epicenter":Landroid/graphics/Rect;
    .end local v17    # "epicenterView":Landroid/view/View;
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .end local v19    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v20    # "inIsPop":Z
    .end local v21    # "outFragment":Landroidx/fragment/app/Fragment;
    .restart local v7    # "outFragment":Landroidx/fragment/app/Fragment;
    :cond_c8
    move-object/from16 v1, p1

    move-object/from16 v21, v7

    .line 624
    .end local v7    # "outFragment":Landroidx/fragment/app/Fragment;
    .restart local v21    # "outFragment":Landroidx/fragment/app/Fragment;
    :goto_cc
    return-object v0
.end method

.method private static configureTransitionsOrdered(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 37
    .param p0, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .param p5, "callback"    # Landroidx/fragment/app/FragmentTransition$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    .line 356
    .local p4, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    const/4 v1, 0x0

    .line 357
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 358
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move/from16 v14, p1

    invoke-virtual {v2, v14}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v15, v1

    goto :goto_23

    .line 357
    :cond_20
    move/from16 v14, p1

    move-object v15, v1

    .line 360
    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v15, "sceneRoot":Landroid/view/ViewGroup;
    :goto_23
    if-nez v15, :cond_26

    .line 361
    return-void

    .line 363
    :cond_26
    iget-object v9, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 364
    .local v9, "inFragment":Landroidx/fragment/app/Fragment;
    iget-object v8, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 365
    .local v8, "outFragment":Landroidx/fragment/app/Fragment;
    invoke-static {v8, v9}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v7

    .line 366
    .local v7, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    if-nez v7, :cond_31

    .line 367
    return-void

    .line 369
    :cond_31
    iget-boolean v6, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 370
    .local v6, "inIsPop":Z
    iget-boolean v5, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 372
    .local v5, "outIsPop":Z
    invoke-static {v7, v9, v6}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 373
    .local v4, "enterTransition":Ljava/lang/Object;
    invoke-static {v7, v8, v5}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    .line 375
    .local v3, "exitTransition":Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 376
    .local v2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v1, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v24, v1

    .end local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v24, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v1, v7

    move-object/from16 v25, v2

    .end local v2    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v25, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, v15

    move-object/from16 v16, v3

    .end local v3    # "exitTransition":Ljava/lang/Object;
    .local v16, "exitTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    move-object/from16 v26, v4

    .end local v4    # "enterTransition":Ljava/lang/Object;
    .local v26, "enterTransition":Ljava/lang/Object;
    move-object/from16 v4, p4

    move/from16 v27, v5

    .end local v5    # "outIsPop":Z
    .local v27, "outIsPop":Z
    move-object/from16 v5, p2

    move/from16 v28, v6

    .end local v6    # "inIsPop":Z
    .local v28, "inIsPop":Z
    move-object/from16 v6, v25

    move-object v0, v7

    .end local v7    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v7, v24

    move-object v14, v8

    .end local v8    # "outFragment":Landroidx/fragment/app/Fragment;
    .local v14, "outFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v8, v26

    move-object/from16 v29, v9

    .end local v9    # "inFragment":Landroidx/fragment/app/Fragment;
    .local v29, "inFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 382
    .local v30, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v9, v26

    .end local v26    # "enterTransition":Ljava/lang/Object;
    .local v9, "enterTransition":Ljava/lang/Object;
    if-nez v9, :cond_77

    if-nez v30, :cond_77

    move-object/from16 v1, v16

    .end local v16    # "exitTransition":Ljava/lang/Object;
    .local v1, "exitTransition":Ljava/lang/Object;
    if-nez v1, :cond_79

    .line 384
    return-void

    .line 382
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .restart local v16    # "exitTransition":Ljava/lang/Object;
    :cond_77
    move-object/from16 v1, v16

    .line 387
    .end local v16    # "exitTransition":Ljava/lang/Object;
    .restart local v1    # "exitTransition":Ljava/lang/Object;
    :cond_79
    move-object/from16 v8, v25

    .end local v25    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v8, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v1, v14, v8, v11}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v25

    .line 390
    .local v25, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v25, :cond_8b

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_88

    goto :goto_8b

    :cond_88
    move-object/from16 v26, v1

    goto :goto_8e

    .line 391
    :cond_8b
    :goto_8b
    const/4 v3, 0x0

    move-object/from16 v26, v3

    .line 396
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .local v26, "exitTransition":Ljava/lang/Object;
    :goto_8e
    invoke-virtual {v0, v9, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 398
    iget-boolean v6, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, v26

    move-object/from16 v4, v30

    move-object/from16 v5, v29

    invoke-static/range {v1 .. v6}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 401
    .local v7, "transition":Ljava/lang/Object;
    if-eqz v14, :cond_bf

    if-eqz v25, :cond_bf

    .line 402
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_af

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_bf

    .line 403
    :cond_af
    new-instance v1, Landroidx/core/os/CancellationSignal;

    invoke-direct {v1}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 404
    .local v1, "signal":Landroidx/core/os/CancellationSignal;
    invoke-interface {v13, v14, v1}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 405
    new-instance v2, Landroidx/fragment/app/FragmentTransition$3;

    invoke-direct {v2, v13, v14, v1}, Landroidx/fragment/app/FragmentTransition$3;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v14, v7, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 413
    .end local v1    # "signal":Landroidx/core/os/CancellationSignal;
    :cond_bf
    if-eqz v7, :cond_fa

    .line 414
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v30

    move-object/from16 v23, v24

    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 418
    move-object v1, v0

    move-object v2, v15

    move-object/from16 v3, v29

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object v6, v9

    move-object v10, v7

    .end local v7    # "transition":Ljava/lang/Object;
    .local v10, "transition":Ljava/lang/Object;
    move-object/from16 v7, v19

    move-object/from16 v16, v8

    .end local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v16, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v8, v26

    move-object/from16 v17, v9

    .end local v9    # "enterTransition":Ljava/lang/Object;
    .local v17, "enterTransition":Ljava/lang/Object;
    move-object/from16 v9, v25

    invoke-static/range {v1 .. v9}, Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 420
    move-object/from16 v1, v24

    .end local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, v15, v1, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 422
    invoke-virtual {v0, v15, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 423
    invoke-virtual {v0, v15, v1, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_101

    .line 413
    .end local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "transition":Ljava/lang/Object;
    .end local v16    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v17    # "enterTransition":Ljava/lang/Object;
    .end local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "transition":Ljava/lang/Object;
    .restart local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "enterTransition":Ljava/lang/Object;
    .restart local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_fa
    move-object v10, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v1, v24

    .line 425
    .end local v7    # "transition":Ljava/lang/Object;
    .end local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "enterTransition":Ljava/lang/Object;
    .end local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "transition":Ljava/lang/Object;
    .restart local v16    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v17    # "enterTransition":Ljava/lang/Object;
    :goto_101
    return-void
.end method

.method private static configureTransitionsReordered(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 30
    .param p0, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .param p5, "callback"    # Landroidx/fragment/app/FragmentTransition$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    .line 231
    .local p4, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    const/4 v1, 0x0

    .line 232
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 233
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v14, v1

    goto :goto_21

    .line 232
    :cond_1e
    move/from16 v13, p1

    move-object v14, v1

    .line 235
    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v14, "sceneRoot":Landroid/view/ViewGroup;
    :goto_21
    if-nez v14, :cond_24

    .line 236
    return-void

    .line 238
    :cond_24
    iget-object v15, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 239
    .local v15, "inFragment":Landroidx/fragment/app/Fragment;
    iget-object v9, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 240
    .local v9, "outFragment":Landroidx/fragment/app/Fragment;
    invoke-static {v9, v15}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v8

    .line 241
    .local v8, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    if-nez v8, :cond_2f

    .line 242
    return-void

    .line 244
    :cond_2f
    iget-boolean v7, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 245
    .local v7, "inIsPop":Z
    iget-boolean v6, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 247
    .local v6, "outIsPop":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 248
    .local v5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 249
    .local v4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v8, v15, v7}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    .line 250
    .local v3, "enterTransition":Ljava/lang/Object;
    invoke-static {v8, v9, v6}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    .line 252
    .local v2, "exitTransition":Ljava/lang/Object;
    move-object v1, v8

    move-object/from16 v16, v2

    .end local v2    # "exitTransition":Ljava/lang/Object;
    .local v16, "exitTransition":Ljava/lang/Object;
    move-object v2, v14

    move-object/from16 v17, v3

    .end local v3    # "enterTransition":Ljava/lang/Object;
    .local v17, "enterTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    move-object/from16 v18, v4

    .end local v4    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v18, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v4, p4

    move-object/from16 v19, v5

    .end local v5    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v19, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v5, p2

    move/from16 v20, v6

    .end local v6    # "outIsPop":Z
    .local v20, "outIsPop":Z
    move-object/from16 v6, v18

    move/from16 v21, v7

    .end local v7    # "inIsPop":Z
    .local v21, "inIsPop":Z
    move-object/from16 v7, v19

    move-object v0, v8

    .end local v8    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v8, v17

    move-object v10, v9

    .end local v9    # "outFragment":Landroidx/fragment/app/Fragment;
    .local v10, "outFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 256
    .local v9, "sharedElementTransition":Ljava/lang/Object;
    nop

    .end local v17    # "enterTransition":Ljava/lang/Object;
    .local v8, "enterTransition":Ljava/lang/Object;
    if-nez v8, :cond_73

    if-nez v9, :cond_73

    move-object/from16 v7, v16

    .end local v16    # "exitTransition":Ljava/lang/Object;
    .local v7, "exitTransition":Ljava/lang/Object;
    if-nez v7, :cond_75

    .line 258
    return-void

    .line 256
    .end local v7    # "exitTransition":Ljava/lang/Object;
    .restart local v16    # "exitTransition":Ljava/lang/Object;
    :cond_73
    move-object/from16 v7, v16

    .line 261
    .end local v16    # "exitTransition":Ljava/lang/Object;
    .restart local v7    # "exitTransition":Ljava/lang/Object;
    :cond_75
    move-object/from16 v6, v18

    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v7, v10, v6, v11}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 264
    .local v5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v4, v19

    .end local v19    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v8, v15, v4, v11}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    .line 267
    .local v3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x4

    invoke-static {v3, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 269
    move-object v1, v0

    move-object v2, v8

    move-object/from16 v16, v3

    .end local v3    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v16, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v3, v7

    move-object v11, v4

    .end local v4    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v11, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v4, v9

    move-object v13, v5

    .end local v5    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v13, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, v15

    .end local v6    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move/from16 v6, v21

    invoke-static/range {v1 .. v6}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 272
    .local v6, "transition":Ljava/lang/Object;
    if-eqz v10, :cond_b4

    if-eqz v13, :cond_b4

    .line 273
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_a4

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b4

    .line 274
    :cond_a4
    new-instance v1, Landroidx/core/os/CancellationSignal;

    invoke-direct {v1}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 275
    .local v1, "signal":Landroidx/core/os/CancellationSignal;
    invoke-interface {v12, v10, v1}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 276
    new-instance v2, Landroidx/fragment/app/FragmentTransition$1;

    invoke-direct {v2, v12, v10, v1}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v10, v6, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 284
    .end local v1    # "signal":Landroidx/core/os/CancellationSignal;
    :cond_b4
    if-eqz v6, :cond_ec

    .line 285
    invoke-static {v0, v7, v10, v13}, Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 286
    nop

    .line 287
    invoke-virtual {v0, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    .line 288
    .local v17, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v0

    move-object v2, v6

    move-object v3, v8

    move-object/from16 v4, v16

    move-object v5, v7

    move-object/from16 v19, v10

    move-object v10, v6

    .end local v6    # "transition":Ljava/lang/Object;
    .local v10, "transition":Ljava/lang/Object;
    .local v19, "outFragment":Landroidx/fragment/app/Fragment;
    move-object v6, v13

    move-object/from16 v22, v7

    .end local v7    # "exitTransition":Ljava/lang/Object;
    .local v22, "exitTransition":Ljava/lang/Object;
    move-object v7, v9

    move-object/from16 v23, v8

    .end local v8    # "enterTransition":Ljava/lang/Object;
    .local v23, "enterTransition":Ljava/lang/Object;
    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 291
    invoke-virtual {v0, v14, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 292
    move-object v2, v0

    move-object v3, v14

    move-object/from16 v4, v18

    move-object v5, v11

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 294
    const/4 v1, 0x0

    move-object/from16 v2, v16

    .end local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v2, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v2, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 295
    move-object/from16 v1, v18

    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, v9, v1, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_f7

    .line 284
    .end local v1    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v17    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "outFragment":Landroidx/fragment/app/Fragment;
    .end local v22    # "exitTransition":Ljava/lang/Object;
    .end local v23    # "enterTransition":Ljava/lang/Object;
    .restart local v6    # "transition":Ljava/lang/Object;
    .restart local v7    # "exitTransition":Ljava/lang/Object;
    .restart local v8    # "enterTransition":Ljava/lang/Object;
    .local v10, "outFragment":Landroidx/fragment/app/Fragment;
    .restart local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_ec
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v19, v10

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    move-object v10, v6

    .line 298
    .end local v6    # "transition":Ljava/lang/Object;
    .end local v7    # "exitTransition":Ljava/lang/Object;
    .end local v8    # "enterTransition":Ljava/lang/Object;
    .end local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v2    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v10, "transition":Ljava/lang/Object;
    .restart local v19    # "outFragment":Landroidx/fragment/app/Fragment;
    .restart local v22    # "exitTransition":Ljava/lang/Object;
    .restart local v23    # "enterTransition":Ljava/lang/Object;
    :goto_f7
    return-void
.end method

.method private static ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .registers 4
    .param p0, "containerTransition"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .line 1280
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_b

    .line 1281
    new-instance v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object p0, v0

    .line 1282
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1284
    :cond_b
    return-object p0
.end method

.method private static findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 949
    .local p0, "map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 950
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 951
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 952
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 950
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 955
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 563
    if-nez p1, :cond_4

    .line 564
    const/4 v0, 0x0

    return-object v0

    .line 566
    :cond_4
    if-eqz p2, :cond_b

    .line 567
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    .line 568
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 566
    :goto_f
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "outFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 576
    if-nez p1, :cond_4

    .line 577
    const/4 v0, 0x0

    return-object v0

    .line 579
    :cond_4
    if-eqz p2, :cond_b

    .line 580
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    .line 581
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    .line 579
    :goto_f
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 7
    .param p1, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 971
    .local p0, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 972
    .local v0, "inTransaction":Landroidx/fragment/app/BackStackRecord;
    if-eqz p2, :cond_2e

    if-eqz p0, :cond_2e

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 974
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 975
    const/4 v1, 0x0

    if-eqz p3, :cond_1e

    iget-object v2, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 976
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_26

    :cond_1e
    iget-object v2, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 977
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_26
    nop

    .line 978
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 980
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 6
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "outFragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "isPop"    # Z

    .line 549
    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    .line 552
    :cond_5
    if-eqz p3, :cond_c

    .line 553
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 554
    :cond_c
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 552
    :goto_10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, "transition":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 550
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 8
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "enterTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p3, "sharedElementTransition"    # Ljava/lang/Object;
    .param p4, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p5, "isPop"    # Z

    .line 1100
    const/4 v0, 0x1

    .line 1101
    .local v0, "overlap":Z
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-eqz p4, :cond_13

    .line 1102
    if-eqz p5, :cond_e

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_12

    .line 1103
    :cond_e
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v1

    :goto_12
    move v0, v1

    .line 1111
    :cond_13
    if-eqz v0, :cond_1a

    .line 1113
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "transition":Ljava/lang/Object;
    goto :goto_1e

    .line 1118
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1121
    .restart local v1    # "transition":Ljava/lang/Object;
    :goto_1e
    return-object v1
.end method

.method private static replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .registers 6
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "exitingFragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 308
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_26

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 311
    nop

    .line 312
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 311
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 328
    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 329
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Landroidx/fragment/app/FragmentTransition$2;

    invoke-direct {v1, p3}, Landroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 336
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_26
    return-void
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 3

    .line 85
    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/fragment/app/FragmentTransitionImpl;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 88
    .end local v0    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/fragment/app/FragmentTransitionImpl;>;"
    :catch_16
    move-exception v0

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method private static retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1016
    .local p0, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 1017
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1018
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1019
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1016
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1022
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method private static scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 19
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .param p5, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Landroidx/fragment/app/FragmentTransition$4;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition$4;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 473
    return-void
.end method

.method private static setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V
    .registers 8
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p4, "outIsPop"    # Z
    .param p5, "outTransaction"    # Landroidx/fragment/app/BackStackRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 995
    .local p3, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 996
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 997
    const/4 v0, 0x0

    if-eqz p4, :cond_18

    iget-object v1, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 998
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_20

    :cond_18
    iget-object v1, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 999
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_20
    nop

    .line 1000
    .local v0, "sourceName":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1001
    .local v1, "outEpicenterView":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1003
    if-eqz p2, :cond_2f

    .line 1004
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1007
    .end local v0    # "sourceName":Ljava/lang/String;
    .end local v1    # "outEpicenterView":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 4
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1084
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_3

    .line 1085
    return-void

    .line 1087
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_17

    .line 1088
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1089
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1091
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method static startTransitions(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 25
    .param p0, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .param p6, "callback"    # Landroidx/fragment/app/FragmentTransition$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    .line 124
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v14, p5

    iget v0, v10, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 125
    return-void

    .line 128
    :cond_10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v0

    .line 130
    .local v15, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move/from16 v0, p3

    .local v0, "i":I
    :goto_18
    if-ge v0, v13, :cond_36

    .line 131
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 132
    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 133
    .local v2, "isPop":Z
    if-eqz v2, :cond_30

    .line 134
    invoke-static {v1, v15, v14}, Landroidx/fragment/app/FragmentTransition;->calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_33

    .line 136
    :cond_30
    invoke-static {v1, v15, v14}, Landroidx/fragment/app/FragmentTransition;->calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 130
    .end local v1    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v2    # "isPop":Z
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 140
    .end local v0    # "i":I
    :cond_36
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_89

    .line 141
    new-instance v3, Landroid/view/View;

    iget-object v0, v10, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 142
    .local v3, "nonExistentView":Landroid/view/View;
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 143
    .local v9, "numContainers":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_4d
    if-ge v8, v9, :cond_87

    .line 144
    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 145
    .local v7, "containerId":I
    move/from16 v6, p3

    invoke-static {v7, v11, v12, v6, v13}, Landroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;

    move-result-object v16

    .line 148
    .local v16, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 149
    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 151
    .local v17, "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v14, :cond_73

    .line 152
    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, v17

    move-object/from16 v4, v16

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V

    move v1, v8

    move v2, v9

    goto :goto_83

    .line 155
    :cond_73
    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v6, v17

    move v0, v7

    .end local v7    # "containerId":I
    .local v0, "containerId":I
    move-object v7, v3

    move v1, v8

    .end local v8    # "i":I
    .local v1, "i":I
    move-object/from16 v8, v16

    move v2, v9

    .end local v9    # "numContainers":I
    .local v2, "numContainers":I
    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V

    .line 143
    .end local v0    # "containerId":I
    .end local v16    # "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :goto_83
    add-int/lit8 v8, v1, 0x1

    move v9, v2

    .end local v1    # "i":I
    .restart local v8    # "i":I
    goto :goto_4d

    .end local v2    # "numContainers":I
    .restart local v9    # "numContainers":I
    :cond_87
    move v1, v8

    move v2, v9

    .line 160
    .end local v3    # "nonExistentView":Landroid/view/View;
    .end local v8    # "i":I
    .end local v9    # "numContainers":I
    :cond_89
    return-void
.end method

.method static supportsTransition()Z
    .registers 1

    .line 1163
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_b

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
