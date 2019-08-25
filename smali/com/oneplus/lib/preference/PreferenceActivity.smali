.class public abstract Lcom/oneplus/lib/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceActivity$Header;,
        Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# instance fields
.field private mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method static synthetic access$000(Lcom/oneplus/lib/preference/PreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceActivity;

    .line 123
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceActivity;

    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceActivity;

    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .line 1414
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    .line 1415
    .local v0, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1417
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1419
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1422
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 1409
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1411
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1212
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1214
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1219
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1220
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1221
    sget v2, Lcom/oneplus/commonctrl/R$id;->prefs:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1222
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1223
    return-void

    .line 1215
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fragment for this activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method findBestMatchingHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 8
    .param p1, "cur"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;)",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .line 1266
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1268
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1269
    .local v3, "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_4

    iget-wide v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    .line 1275
    :cond_0
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1276
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1277
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1279
    :cond_1
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 1280
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1281
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1283
    :cond_2
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 1284
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1285
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    .end local v3    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1271
    .restart local v3    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1272
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    nop

    .line 1289
    .end local v2    # "j":I
    .end local v3    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1290
    .local v2, "NM":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1291
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    return-object v1

    .line 1292
    :cond_6
    if-le v2, v3, :cond_a

    .line 1293
    nop

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_a

    .line 1294
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1295
    .restart local v3    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1296
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1297
    return-object v3

    .line 1299
    :cond_7
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1300
    return-object v3

    .line 1302
    :cond_8
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1303
    return-object v3

    .line 1293
    .end local v3    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1307
    .end local v1    # "j":I
    :cond_a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1479
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    return-object v0

    .line 1482
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 932
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 938
    const/4 v0, 0x1

    return v0

    .line 933
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1017
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1019
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 781
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .line 1089
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1091
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1093
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 1026
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1028
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->postBindPreferences()V

    .line 1031
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 529
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 532
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity:[I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->op_preferenceActivityStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 537
    .local v0, "sa":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_android_layout:I

    sget v4, Lcom/oneplus/commonctrl/R$layout;->preference_list_content:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 541
    .local v1, "layoutResId":I
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_oneplusHeaderLayout:I

    sget v5, Lcom/oneplus/commonctrl/R$layout;->preference_header_item:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 544
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_headerRemoveIconIfEmpty:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 548
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 550
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setContentView(I)V

    .line 552
    sget v4, Lcom/oneplus/commonctrl/R$id;->list_footer:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 553
    sget v4, Lcom/oneplus/commonctrl/R$id;->prefs_frame:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 554
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    .line 555
    .local v4, "hidingHeaders":Z
    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    iput-boolean v6, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    .line 556
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, ":android:show_fragment"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 557
    .local v6, "initialFragment":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, ":android:show_fragment_args"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 558
    .local v7, "initialArguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, ":android:show_fragment_title"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 559
    .local v8, "initialTitle":I
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, ":android:show_fragment_short_title"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 561
    .local v9, "initialShortTitle":I
    if-eqz p1, :cond_3

    .line 564
    const-string v10, ":android:headers"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 565
    .local v10, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    if-eqz v10, :cond_2

    .line 566
    iget-object v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 567
    const-string v11, ":android:cur_header"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 569
    .local v11, "curHeader":I
    if-ltz v11, :cond_2

    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 570
    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v12}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 574
    .end local v10    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    .end local v11    # "curHeader":I
    :cond_2
    goto :goto_3

    .line 575
    :cond_3
    if-eqz v6, :cond_5

    iget-boolean v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v10, :cond_5

    .line 579
    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 580
    if-eqz v8, :cond_7

    .line 581
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 582
    .local v10, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    .line 583
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object v11, v2

    .line 584
    .local v11, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p0, v10, v11}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 585
    .end local v10    # "initialTitleStr":Ljava/lang/CharSequence;
    .end local v11    # "initialShortTitleStr":Ljava/lang/CharSequence;
    goto :goto_3

    .line 589
    :cond_5
    iget-object v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 594
    iget-object v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 595
    iget-boolean v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v10, :cond_7

    .line 596
    if-nez v6, :cond_6

    .line 597
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onGetInitialHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v10

    .line 598
    .local v10, "h":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v10}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 599
    .end local v10    # "h":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    goto :goto_3

    .line 600
    :cond_6
    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 609
    :cond_7
    :goto_3
    const/16 v10, 0x8

    if-eqz v6, :cond_9

    iget-boolean v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v11, :cond_9

    .line 611
    sget v5, Lcom/oneplus/commonctrl/R$id;->headers:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v5, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 613
    if-eqz v8, :cond_c

    .line 614
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 615
    .local v5, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v9, :cond_8

    .line 616
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    nop

    .line 617
    .local v2, "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {p0, v5, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 618
    .end local v2    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v5    # "initialTitleStr":Ljava/lang/CharSequence;
    goto :goto_4

    .line 619
    :cond_9
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 620
    new-instance v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;

    iget-object v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    iget-boolean v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    invoke-direct {v2, p0, v11, v12, v13}, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 622
    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v2, :cond_c

    .line 624
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 625
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_a

    .line 626
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 628
    :cond_a
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 633
    :cond_b
    sget v2, Lcom/oneplus/commonctrl/R$layout;->preference_list_content_single:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->setContentView(I)V

    .line 634
    sget v2, Lcom/oneplus/commonctrl/R$id;->list_footer:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 635
    sget v2, Lcom/oneplus/commonctrl/R$id;->prefs:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 636
    new-instance v2, Lcom/oneplus/lib/preference/PreferenceManager;

    const/16 v5, 0x64

    invoke-direct {v2, p0, v5}, Lcom/oneplus/lib/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    .line 637
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 641
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 642
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "extra_prefs_show_button_bar"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 644
    sget v5, Lcom/oneplus/commonctrl/R$id;->button_bar:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 646
    sget v5, Lcom/oneplus/commonctrl/R$id;->back_button:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 647
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v11, Lcom/oneplus/lib/preference/PreferenceActivity$2;

    invoke-direct {v11, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$2;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    sget v11, Lcom/oneplus/commonctrl/R$id;->skip_button:I

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 654
    .local v11, "skipButton":Landroid/widget/Button;
    new-instance v12, Lcom/oneplus/lib/preference/PreferenceActivity$3;

    invoke-direct {v12, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$3;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    sget v12, Lcom/oneplus/commonctrl/R$id;->next_button:I

    invoke-virtual {p0, v12}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 661
    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    new-instance v13, Lcom/oneplus/lib/preference/PreferenceActivity$4;

    invoke-direct {v13, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$4;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    const-string v12, "extra_prefs_set_next_text"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 670
    const-string v12, "extra_prefs_set_next_text"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 671
    .local v12, "buttonText":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 672
    iget-object v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v13, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 675
    :cond_d
    iget-object v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 678
    .end local v12    # "buttonText":Ljava/lang/String;
    :cond_e
    :goto_5
    const-string v12, "extra_prefs_set_back_text"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 679
    const-string v12, "extra_prefs_set_back_text"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 680
    .restart local v12    # "buttonText":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 681
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 684
    :cond_f
    invoke-virtual {v5, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 687
    .end local v12    # "buttonText":Ljava/lang/String;
    :cond_10
    :goto_6
    const-string v10, "extra_prefs_show_skip"

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 688
    invoke-virtual {v11, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v11    # "skipButton":Landroid/widget/Button;
    :cond_11
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 965
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 967
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 970
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 3

    .line 747
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 749
    .local v1, "h":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    iget-object v2, v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 750
    return-object v1

    .line 747
    .end local v1    # "h":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have at least one header with a fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetNewHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 1

    .line 763
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcom/oneplus/lib/preference/PreferenceActivity$Header;I)V
    .locals 9
    .param p1, "header"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .line 1055
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1056
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1057
    iget v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1058
    .local v0, "titleRes":I
    iget v1, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1059
    .local v1, "shortTitleRes":I
    if-nez v0, :cond_0

    .line 1060
    iget v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->titleRes:I

    .line 1061
    const/4 v1, 0x0

    .line 1063
    :cond_0
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v7, v0

    move v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1065
    .end local v0    # "titleRes":I
    .end local v1    # "shortTitleRes":I
    goto :goto_0

    .line 1066
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1069
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1071
    :cond_3
    :goto_0
    return-void
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .line 736
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 2

    .line 723
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$bool;->preferences_prefer_dual_pane:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 725
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 1035
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1037
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1039
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 1040
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v1, p3}, Lcom/oneplus/lib/preference/PreferenceActivity;->onHeaderClick(Lcom/oneplus/lib/preference/PreferenceActivity$Header;I)V

    .line 1043
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1550
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1553
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 998
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 999
    const-string v0, ":android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1000
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    .line 1002
    .local v1, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 1003
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1004
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1005
    return-void

    .line 1012
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1013
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 974
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 976
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 977
    const-string v0, ":android:headers"

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 978
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 980
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 981
    const-string v1, ":android:cur_header"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 986
    .end local v0    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 987
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    .line 988
    .local v0, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v0, :cond_1

    .line 989
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 990
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 991
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 994
    .end local v0    # "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 954
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 956
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityStop()V

    .line 959
    :cond_0
    return-void
.end method

.method setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1190
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1191
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1192
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 1197
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 1198
    return-void
.end method

.method showBreadCrumbs(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 2
    .param p1, "header"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1201
    if-eqz p1, :cond_2

    .line 1202
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1203
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1204
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1206
    .end local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1207
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1209
    :goto_0
    return-void
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 1142
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v0, :cond_4

    .line 1143
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1146
    .local v0, "crumbs":Landroid/view/View;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    nop

    .line 1151
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v1, :cond_1

    .line 1152
    if-eqz p1, :cond_0

    .line 1153
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1155
    :cond_0
    return-void

    .line 1157
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v1, :cond_3

    .line 1158
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1160
    sget v1, Lcom/oneplus/commonctrl/R$id;->breadcrumb_section:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1161
    .local v1, "bcSection":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1164
    .end local v1    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1165
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v1, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .end local v0    # "crumbs":Landroid/view/View;
    goto :goto_0

    .line 1147
    .restart local v0    # "crumbs":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 1148
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1149
    return-void

    .line 1167
    .end local v0    # "crumbs":Landroid/view/View;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1168
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1170
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1171
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1173
    :goto_1
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .line 1128
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1129
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1130
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1132
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1134
    :goto_0
    return-void
.end method

.method public switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1251
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    .line 1257
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1260
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1261
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 1263
    :goto_0
    return-void

    .line 1258
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1233
    const/4 v0, 0x0

    .line 1234
    .local v0, "selectedHeader":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1235
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    iget-object v2, v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1236
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1237
    goto :goto_1

    .line 1234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1240
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 1241
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1242
    return-void
.end method
